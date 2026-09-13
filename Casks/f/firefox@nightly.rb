cask "firefox@nightly" do
  version "158.0a1,2026-09-13-08-44-23"

  language "ca" do
    sha256 "ebf1d900cf378181b4838bfd02b53dba2d6cef6b80ef3b0dce5857c0aaab7ffa"
    "ca"
  end
  language "cs" do
    sha256 "88a8336be8fee421886e7e4663a336eb3c9bd41d042ab68243187ed7147f901b"
    "cs"
  end
  language "de" do
    sha256 "d0732a8e60ac4c8d76f42ab34b1790a42ff0275944796a5800e84303921ff9b4"
    "de"
  end
  language "en-CA" do
    sha256 "16dfa636132c6d2640d5738493d37b133a178d8fbb273cfe8d1d82952aee839a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e84f5e6f16547adac6790f4533d70ed19e0e51e04bef55f99a17448e7368b0c6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "92ea83f49815d663f123b4dc1ad07bc4d3a88e3f7f47630070fce06f997dfce4"
    "en-US"
  end
  language "es" do
    sha256 "a4546f8f58b8e09c035d896436120ca23fd68f44539aa0ebbfd3eece7c93e3d2"
    "es-ES"
  end
  language "fr" do
    sha256 "ef7d4442715258fe7e4b6675e722697a48c6c668174cf22297203c7413ba6d05"
    "fr"
  end
  language "it" do
    sha256 "d277b0ff3e9ff220439adf4115147f84c4d10dd6219015fa5d6c67facc0a7d55"
    "it"
  end
  language "ja" do
    sha256 "3126986da229cf0a5002957b1fae551acacd5a27be2659153c1e80b5131c1b3b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ab09a02ada437cc53cd176019014221f27824207aed5999517f90373d9fd8330"
    "ko"
  end
  language "nl" do
    sha256 "cb3c3d97d616d7a4644ceb4d15890cd90c9e2fa4ba9b14e96f40c82a6ecc0809"
    "nl"
  end
  language "pt-BR" do
    sha256 "de42280ef12284bbaae6594d74255a8322a8103c89272a776a2bd0e3f3e52738"
    "pt-BR"
  end
  language "ru" do
    sha256 "f6a245f1c306f7c6ca2a543035a649014b3d7fb5fbea8a6d5cc7cc38e1dd1ccb"
    "ru"
  end
  language "uk" do
    sha256 "5d8df0ee0234d264ef6159c6f8aaffcf799694ae2a9c011e6f6181fd0cd7cbb1"
    "uk"
  end
  language "zh-TW" do
    sha256 "a99bb383dd9b1ec076d6369aac58df7d57538ae11fd8b54d840392e8cad9191f"
    "zh-TW"
  end
  language "zh" do
    sha256 "aea805cbc9456fbfb62d640fc3f0ddf5d21319e93b9c62a483dda665542fa274"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
