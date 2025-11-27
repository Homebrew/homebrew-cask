cask "firefox@nightly" do
  version "147.0a1,2025-11-27-15-04-45"

  language "ca" do
    sha256 "ec636fc4cb2bb7de469afb1e91e7f10d76131250529cb0d5c8e0e51804626e2c"
    "ca"
  end
  language "cs" do
    sha256 "afc98a5bde301568533fd4d69ab70a7fd7d617cb7a210703a05e2ae5e840a578"
    "cs"
  end
  language "de" do
    sha256 "91611a051d74cd2ea0c9968a666c493470a1986be9e5fc5ebbdb1ba833e4d54f"
    "de"
  end
  language "en-CA" do
    sha256 "6622839d4673aa87f905ebe3e251518e0a956e93a654ab077357e6f2eddaa4b7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "226abb1278dc770fce47334f79a150413a1f6d2be7a7916f6e1f7456ebae19d2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cc69918e78de44329f311c0778d1db86aed1c25411834af5fcd12ada07d4cbfa"
    "en-US"
  end
  language "es" do
    sha256 "ef3e11de34753db527b1cdd6efd1abbbfd45fdbac8d6395bf97b2147e997ff1e"
    "es-ES"
  end
  language "fr" do
    sha256 "e4c72d2803dc6aea96b221e26230e738c52e7247a6c590c3285bb328b46bebd2"
    "fr"
  end
  language "it" do
    sha256 "9c664f7e35ff03ca1f1e8e79431664389c8bc57660a8627a1b4a19bf2c2c373e"
    "it"
  end
  language "ja" do
    sha256 "d7b615d221dfccf2ad4f84915b5e487315ace0f8b72d29292401401eca1d8dac"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "84b1214e2ca99e757c2ba2f985e088cf0fb61ef5f7d00482e64291930d5f7980"
    "ko"
  end
  language "nl" do
    sha256 "1411468e40487eaf59cef58ce93dbffa9b0cb833a9d9bb231ce020c5ec283632"
    "nl"
  end
  language "pt-BR" do
    sha256 "16ec7750a4857f9d7ef3e4d38616453caacc1ddf8f81a992625c7b15f3938e5b"
    "pt-BR"
  end
  language "ru" do
    sha256 "2614b7138b6f1aa11c2b4f85e4cb4e6fe40d512dae00069bd5248c4ece86e53e"
    "ru"
  end
  language "uk" do
    sha256 "750220042b0d30978c6e22527c3000c9d87a12849f0933165c95dd60331f41a8"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0efefb7cdec1b16daa8f0f6a21da06bb67409d4630ff075ca36026a35c931dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "38b583a4e018cc7981b62a5e66ba7acfa1783e5f54f8cdd071e94445f7c5883d"
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
