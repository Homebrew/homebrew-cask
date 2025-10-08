cask "firefox@nightly" do
  version "145.0a1,2025-10-08-09-13-36"

  language "ca" do
    sha256 "a6d4b46cdd4f01d98e203df1270ba3ac434b0f9af43f182a5d841be67a35097d"
    "ca"
  end
  language "cs" do
    sha256 "79165603cab4027d311d7ebeb3dd41f2459fcf1357df19c740489060d00f56a7"
    "cs"
  end
  language "de" do
    sha256 "21fb7e9ecd8c081ae08d07d29f268678158d688d9784b7a34c83bca3b2affe1e"
    "de"
  end
  language "en-CA" do
    sha256 "d7f36131b16e9a79ed88bb931363ead62281613439b2ea79861b7fa8ea91203e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bafb2721ec3077a0c1e408941c35f25475fae1a1d45fa26ff2b9657570de0bf2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fec4dfb8bc69a225072788c62ed0e95e2d7223780d64b08f0b4373bfbfecc172"
    "en-US"
  end
  language "es" do
    sha256 "930d7e0440813f11832e36b5eb6b2af784b8dd1883071d0d5a29a3eba773bea4"
    "es-ES"
  end
  language "fr" do
    sha256 "3777616b62bb997f7e55223ac045bc6460ce9b663461dd33a8708597114e50ae"
    "fr"
  end
  language "it" do
    sha256 "6e070392049aadcc1707ebd4afcebe7517322f21a6f97beea5e49ac4022e8dfd"
    "it"
  end
  language "ja" do
    sha256 "50e8a847d8a2bde54e9eb5f8f98e13e16b7549c452f482d6be87747c426d0f5e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f4ffb92462cdcf9dc3d30a2e864bb274cfe3bd51ff2eed5a8c10d84a44219a68"
    "ko"
  end
  language "nl" do
    sha256 "bbef7ad3ddb1219465cee8be2690e08e11775fca26636a2019ab9f0ea26cebaa"
    "nl"
  end
  language "pt-BR" do
    sha256 "a3a2ab5c7b349e3e22d2ebbb025d832a8b593c657aa3061e71b1380cc0e39530"
    "pt-BR"
  end
  language "ru" do
    sha256 "00d97cf637dd56f3cb73f339a99215f2a64b2fe6b1c57fb3e4ed913921cf2bc8"
    "ru"
  end
  language "uk" do
    sha256 "a135b543c9f32b56c433ddec31f9d4f76fcaf763ffbb2ef447a987176067d382"
    "uk"
  end
  language "zh-TW" do
    sha256 "2af31d17ef31e3f163ba11bfe198a801ddb53c7ff279ce2810d69543c1f9c04e"
    "zh-TW"
  end
  language "zh" do
    sha256 "2b79bd66f0d4328159abfdf34126d5a67a40549eacd0555129a551846025429b"
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
