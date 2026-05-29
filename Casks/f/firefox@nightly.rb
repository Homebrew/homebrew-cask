cask "firefox@nightly" do
  version "153.0a1,2026-05-28-21-42-08"

  language "ca" do
    sha256 "1b426c35d5a118df7701360a1644b7234a56fffd7c9c454385c0da98acddc481"
    "ca"
  end
  language "cs" do
    sha256 "69f978c38b97db7e00f0404a1264821232b26572438a8f87c2c94582751200f6"
    "cs"
  end
  language "de" do
    sha256 "60aae0f91869fb44a86e9a186ce425a01f0a7742bbceb234c4636a6682b7ab4e"
    "de"
  end
  language "en-CA" do
    sha256 "5b5ba8bb360a1af14d9bfc1f4db2eba14d89f62c2b5fc882a6e367b30df818af"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d599a6ac8a6dbbac3d91c494cfe258851df80f29803dc945a8285d57716d8bdd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "45f186138d995a9940bdbb7c61f39fb663ded2a3e6d17e0db75de51bb7dd5c32"
    "en-US"
  end
  language "es" do
    sha256 "de0145007aef3d70efc7b54f11aabf91fce40c1e93a648c59e26fb4df69c670d"
    "es-ES"
  end
  language "fr" do
    sha256 "c34d16d207c58204fba1195f14f54e328cd6039cfbbcf075f1677c21cf533a30"
    "fr"
  end
  language "it" do
    sha256 "675320fb93672e16efc9e960d767df3e40bd3d9a72df5c4b6f49fde65c9c91f7"
    "it"
  end
  language "ja" do
    sha256 "84f415668ae048417bf523ceafa0ea9956c2c58b91e19b8d3e2094b15ae0519e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4b7e458a52c77361a22128c37dd6deb1e9a720cb84e38f7d3644f7a3c698db3b"
    "ko"
  end
  language "nl" do
    sha256 "11d5c58994471b871e11f4274987d163f18a19f39dfb6d934aa19deeefb6d82e"
    "nl"
  end
  language "pt-BR" do
    sha256 "d33b08439d6ab3f39ba1c262bb1f4c4c4d13ce6cd8ecd6bb176474803c2973ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "bef1bac4374c16454f885e1a52922a668115b20dcf1e516757b1c22cf6152959"
    "ru"
  end
  language "uk" do
    sha256 "02dd877d9e1e87fd418d622aed936c5aff52f6c304d9679ea59c7deba80ee91b"
    "uk"
  end
  language "zh-TW" do
    sha256 "d5336254dbedb8a07abe8f791aacfbf710ded52f7a719375ff99213625a68c56"
    "zh-TW"
  end
  language "zh" do
    sha256 "1bcfb5243e6850ba723e303a9c946caf3a8c0df3ac4ccb79aab2d32532f3fbde"
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
