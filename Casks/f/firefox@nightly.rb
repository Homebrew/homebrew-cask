cask "firefox@nightly" do
  version "146.0a1,2025-11-02-09-35-02"

  language "ca" do
    sha256 "43e8f43e361d835ad32761e813e103cd5b0e9c7d46339f6f6f29e5de621abd90"
    "ca"
  end
  language "cs" do
    sha256 "59d8685fd7975573936153e00854cf49ef317d13edc9f36332bb10c6c0930957"
    "cs"
  end
  language "de" do
    sha256 "70be0e04b2739b88f574053d9e01ef907793c880316064caf6c6f6e4bb9c4278"
    "de"
  end
  language "en-CA" do
    sha256 "b0dc01d9fe44f88d496bc24a06314b915f2691afc93bd33f29426dbd89f9163b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "44df2dc965bcf0207b33cc4ac5648d6f092c27d457c2c13bc1647a413a6b32ca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c3849a1a57a69d9df92ed41e761b5ba4d649e5193460c0239fdf95dab1baaf6b"
    "en-US"
  end
  language "es" do
    sha256 "32d6877341e6b10d4de9aea6134617d57506dd499f94bd4f488c207535a83c6c"
    "es-ES"
  end
  language "fr" do
    sha256 "bf51c6cf13698e2d0a1d68580560e39747a4c3fd373fce2766d2dc7f4e4b49ab"
    "fr"
  end
  language "it" do
    sha256 "b171addaf0042a465547741650730e84b1f731e7bc79a5ec4ac3094c522796ca"
    "it"
  end
  language "ja" do
    sha256 "f241757c0393eddedb6c71450efde91580df2f0799acb6b101248e3062a14e37"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2f78901cd5261504e5c917f890fb9217bd560cb926216d22a8fc4079e0148fb7"
    "ko"
  end
  language "nl" do
    sha256 "83537e42f2e81db9113a92d568cfcf1c19b3bb08be5c591b505965adfb2982a8"
    "nl"
  end
  language "pt-BR" do
    sha256 "72382696507834aaafea48a48bb1d7565c5d93bea8d72b92beb34cf7d48be870"
    "pt-BR"
  end
  language "ru" do
    sha256 "99851f5b1dce553725115effdc33fe8d8c2a1d3d49f1bed35b5302abc4f8034b"
    "ru"
  end
  language "uk" do
    sha256 "020535f8ee915e5fab613cb0dd641580bc55a1ce5e10f9e05cf6281656d4c6ed"
    "uk"
  end
  language "zh-TW" do
    sha256 "961cb09e46333aec694bd0fd1f4c709311850a12e23fd7648e02e5b86e55402d"
    "zh-TW"
  end
  language "zh" do
    sha256 "3c36667d5017266023bd9ce3e86ec2c4f9b2336931bbe057e456ac12f5f89caf"
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
