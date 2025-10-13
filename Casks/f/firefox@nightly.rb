cask "firefox@nightly" do
  version "145.0a1,2025-10-12-21-21-13"

  language "ca" do
    sha256 "72d4a478649aeca6bf4f8fda7919deb834a2d2c8bbd49b88bfe29f82dac6aa2d"
    "ca"
  end
  language "cs" do
    sha256 "11c4d86eb58a8aff004756f9c40b3e997eda122574bfd9d272772c2278983c72"
    "cs"
  end
  language "de" do
    sha256 "56c606f7b1a55f1b196664c036ae5fd275e4457793dd7daafc07af72ee850ae2"
    "de"
  end
  language "en-CA" do
    sha256 "e7e0173ba4d22e1fa53f791ce3b5ce7616a26a2348435f9ad25efa3da45270d5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "004f2338f9f010ba2d57fc6013f13588c3269f6d7f1b1b91a447182c8f2c5d8d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "303d0b9eda0a031323224ca76dd3b97ab7abf9fd1d740a823b0bce44cd2dae05"
    "en-US"
  end
  language "es" do
    sha256 "d0d75322e14c4f8afd5e4299e69728d53bb76261721811e2e0b5b164c6e36dde"
    "es-ES"
  end
  language "fr" do
    sha256 "56f7f6fca21104d8d6f460408afb044cbe113305ab40465fd68053368e055d55"
    "fr"
  end
  language "it" do
    sha256 "a4cb48e34f9c16a440c1f93267453c0988c0111b92e349a810463258a8878cfc"
    "it"
  end
  language "ja" do
    sha256 "778b39a27e27992c76cd0e067ae7fa2644da664caa7ec93504be35ebbd7b816b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "74c6c508e7e7d75260d8134fe61bf888facfb581b3e6d6dd08d81228c4f74a33"
    "ko"
  end
  language "nl" do
    sha256 "99fc2368a4388f13a24e8f3d69aff6a70e27cdc9fde61d6e6b8dd26a17919a48"
    "nl"
  end
  language "pt-BR" do
    sha256 "43e5bbf44b7979f7d36dedbb93a68efcff6bd95d6bef43d391e023912b53a59e"
    "pt-BR"
  end
  language "ru" do
    sha256 "8ac628e904518f5e7bb745da4f15df722cd5a63bfa2ef9cedb973d2379775f3f"
    "ru"
  end
  language "uk" do
    sha256 "0357543c5014aab767b3d883f783b7c9465dc53b8ea5af9518d00ad2e20cd130"
    "uk"
  end
  language "zh-TW" do
    sha256 "b32c7e343f24c0d3072c649ddb224084b7a9c8db2ff2013faaf6b0092a1993ba"
    "zh-TW"
  end
  language "zh" do
    sha256 "1278309f911b0b9ed1b1d61e2bbaa03c0092a8950de5eb564c0670ff72c6b094"
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
