cask "firefox@nightly" do
  version "145.0a1,2025-09-28-21-17-43"

  language "ca" do
    sha256 "2b8628a5b26daad7dbcf73cdb052b8475e39b7b0e5096bbac364ab1a90ce73ac"
    "ca"
  end
  language "cs" do
    sha256 "f6e7cdbc609ee13497416d48739575b5831c3d82d02fc336fc1f12cf33fae24c"
    "cs"
  end
  language "de" do
    sha256 "92c9e2f14ccce214bc25ac0af3e307d2c07d8ba63d6b2dcd5a92f7087d20e09d"
    "de"
  end
  language "en-CA" do
    sha256 "67eca3a92b9be137e7a140da93b0d2bb8b2837b4724a9c70c68bb44367855ed7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "19649cbabaf26c5ffa43465460d2e46de17f2d889db74308c7ce16d70562e5e4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8c6b02a28d37db1573b8b1779db6aa8308d7b7f7d3367879b9bb6c1a8bd4fd6"
    "en-US"
  end
  language "es" do
    sha256 "d2794832046ff5f56f0a19385483a34459d5179aba8d522ed7cd5faefc7abbcc"
    "es-ES"
  end
  language "fr" do
    sha256 "b8d657c67ad40676c4643d92b655b99b7ad8e587244b9f3b0c21a25dee8dd9e6"
    "fr"
  end
  language "it" do
    sha256 "8b0c354e4352e4c9ffa382cb08bce8abe6d2b9fae7a87e1099171e708a046d4c"
    "it"
  end
  language "ja" do
    sha256 "6102b06e674196a8b2772fd54f0c9d02b33c70fd7c7c5cf9f3063ba61677e42b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "72b532827c7369efe7a08ff1ef0cf52f22eb4d9bb126e49f4a3d59383bbaa2b0"
    "ko"
  end
  language "nl" do
    sha256 "bc77f68f7d870b14a1283846b4393104b64cdb55e5c08411cf7caa7e35af72c4"
    "nl"
  end
  language "pt-BR" do
    sha256 "380f86267d685099452eeb49a62f0c68bb7df730ab4313287779911ac064e03a"
    "pt-BR"
  end
  language "ru" do
    sha256 "1fb85f219a125fdc30da66e608e72884a585719e56bff5e081579b00f5b6669d"
    "ru"
  end
  language "uk" do
    sha256 "c27ae341b6403448ed149818aa050b29de70b64f9be16e79d6d42594440e4f8c"
    "uk"
  end
  language "zh-TW" do
    sha256 "81341aae9a8579d62a73e7f9f1fedc4e4af989f91797bfba5c07d0155277efbe"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c71b5633b496decb605f8b8db8aeb3b6809d3348f89e4782ede0b35ef92ca50"
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
