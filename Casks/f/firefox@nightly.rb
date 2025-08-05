cask "firefox@nightly" do
  version "143.0a1,2025-08-05-09-58-12"

  language "ca" do
    sha256 "14340d5153c0143e8915f68d73df2a33105116fb7c26dcf914c4a417ea4925f8"
    "ca"
  end
  language "cs" do
    sha256 "fb23e38d72f6c51c7c2dc91d0997a8dbabbbe0d2ef58d75f3a5186cf8b5ccae0"
    "cs"
  end
  language "de" do
    sha256 "b1e0f5438a61a6dd23f115cb21af2f0e3fe5c0567c6b18c530da0b1cf9214336"
    "de"
  end
  language "en-CA" do
    sha256 "540e853d06c8c63b70f48c3741a8569dc142442374b3a5b5beca64b6be2fe2c4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "af6fcfbe88c17ea4fc7db364504bb26355b0358276d33dbea6306d442390b888"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8e9b7bca9113f9b2049896bed691115359daf14381c281d63591ef2226015409"
    "en-US"
  end
  language "es" do
    sha256 "5369b9a3d549167e5cbf0a62420c06fe78269e802e77f1bcaa46036da38fa5f1"
    "es-ES"
  end
  language "fr" do
    sha256 "fb8f06d8e53bdd95307c34e838b131ccc3ed67be8e2588f58795051ab3e44693"
    "fr"
  end
  language "it" do
    sha256 "df29316b831b6e8c88f4e84945d6d4965e98b4ce7972243d7bdf45bba32565e3"
    "it"
  end
  language "ja" do
    sha256 "647593604e76eb61dde14af51443d67bc41f5e66455f17fc771b4a1af6464207"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f36bdb1dfb3895767871f54ac8691de09735599b5324415823aa3410e94fff46"
    "ko"
  end
  language "nl" do
    sha256 "0bf22ed34bdce730df63675b0d1f6dd883f9006d9d0a31352dd640e3da5297c2"
    "nl"
  end
  language "pt-BR" do
    sha256 "0cf667799c5e182df5ffc9bfb6a5f1c05e6048da77d1f8cce68c4540ca4114e4"
    "pt-BR"
  end
  language "ru" do
    sha256 "8d1fcacc1741acda69bd358c198c1c2e1edf810350886311747b1e32da31b384"
    "ru"
  end
  language "uk" do
    sha256 "2fd184550e3ac70a188e1251818319e47eb8439c106fcf0afb5f8fbbfdcb4ccb"
    "uk"
  end
  language "zh-TW" do
    sha256 "2f0f8715e73aa9b0c14e8481070da5ae00e836616b3891abc65fd34c493defbb"
    "zh-TW"
  end
  language "zh" do
    sha256 "805aa86152541349e6d0179528edcb3b2b143be256e08d05388f8823fe41fd91"
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
  depends_on macos: ">= :catalina"

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
