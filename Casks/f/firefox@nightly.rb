cask "firefox@nightly" do
  version "149.0a1,2026-02-21-09-01-24"

  language "ca" do
    sha256 "1b937cf445e4751e61555fd7e4715b702eba3154d9dfb825df1eb1b43582dcbb"
    "ca"
  end
  language "cs" do
    sha256 "721e7839b1081da72b858749fe51b9536e04d9132a76d7fc94bb7bad52013ddd"
    "cs"
  end
  language "de" do
    sha256 "641e7c3534bada50ba2b008c4c1a0752c7825ffc1cc26b3d2d90685213f6340a"
    "de"
  end
  language "en-CA" do
    sha256 "3d6e465ec7230d0b6d0695a8dd884a9c27888af290e8466ee20a447ee474c961"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b54bb8c83f01df6b7e10760a008aab907fe8b1b03962fb29d1cec767fa75f585"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38d47dc5b57bf2460d1da9a4423c79e42c75124b56432c3384fe7356487267e0"
    "en-US"
  end
  language "es" do
    sha256 "08b0bde1d170359e7fbe76cc614e9f02f3a01c73d923ef49207528ea9e49ef94"
    "es-ES"
  end
  language "fr" do
    sha256 "f7901c978f20f861d318b4e8874b93da08b9fb628b492cfd91453f197d7ce3f5"
    "fr"
  end
  language "it" do
    sha256 "a28cdd645a89df6760cf7157a68e54e894abbddc824c3182d808b999a446e598"
    "it"
  end
  language "ja" do
    sha256 "dff3d116e14783d489dc98be4e6eb532f5eec993b414d5bd493dee35e49c18e5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3f9a87fc79c633ee110d23a13c67b81ba4b40575ffd871ef09dc515c43981fc3"
    "ko"
  end
  language "nl" do
    sha256 "c945a675bb3bf30981c69664c6fe7be4b8e06330289595fbba9c9d5d13a3afd2"
    "nl"
  end
  language "pt-BR" do
    sha256 "b760ac49d091cafeb7c3d6b1573107891f937f7ae789a1b2f20b5a896e59c725"
    "pt-BR"
  end
  language "ru" do
    sha256 "368faab0e4377a9526475d4c96fa59515cba377068f73244d334d5e7ed1aefa4"
    "ru"
  end
  language "uk" do
    sha256 "190a1f3a02eeafd4998ab745cdec757e40ea9caf0837adf603e11468994d1737"
    "uk"
  end
  language "zh-TW" do
    sha256 "b11b2c7c701f1f59e8608ff6ea2fd15ccee85ff105cf10285a9f14575df075bc"
    "zh-TW"
  end
  language "zh" do
    sha256 "f62cdc6fc1b1d5c7ee2504af31638fca06abc75a3699b1e64117785a2eeeeef1"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
