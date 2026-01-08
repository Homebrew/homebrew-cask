cask "firefox@nightly" do
  version "148.0a1,2026-01-08-16-54-48"

  language "ca" do
    sha256 "35c95c6480ade71fd4699780ba2f39a432f48d1fee51fa200ffd2ede6b991cc9"
    "ca"
  end
  language "cs" do
    sha256 "fa0b93e7934558193b4550dad4dc26040168ef4caf04eccfeea936b1fbd738ae"
    "cs"
  end
  language "de" do
    sha256 "1345396d2ad1d05526c36ef9e20adfe45b6842e247be5c1633169b2202e7525c"
    "de"
  end
  language "en-CA" do
    sha256 "fd324fceafc103aa192035fa46359aec54e973ab2e39fbb5fc7e2dc7ccf88fbb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b014e4c3e28f76a5db56000bff736be4f4004feb56f9d193151b6ab96e818038"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd776438253ec11b5a787324fb4c0f3ff0276fadde3d988794e1c538106bbc2c"
    "en-US"
  end
  language "es" do
    sha256 "c51962c39cc919dfa144fe877b0625d6adbbf0eae98a54acddeb6c888d502875"
    "es-ES"
  end
  language "fr" do
    sha256 "c5b67919819f8cc8a85953efb9843a8fc84b3a01a72ed41a565e9f20f16b59e5"
    "fr"
  end
  language "it" do
    sha256 "88726ecbbcbfbde20cc795491bb9c53cf63fe4a3d378d57c794bf1d171779585"
    "it"
  end
  language "ja" do
    sha256 "b0e351f36ace051d4a556e21e2efe3a88ce94bbdbfd57106ea1f45d64075e895"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5bd23451b18e82d08d6ab0ed3e4b7e0f0f28a988f35eff9429f422ad31bd09b6"
    "ko"
  end
  language "nl" do
    sha256 "7ee38549268ba0fc4666d56b4fd9f1e5ba8fdf46fee93493638a7c6e9c01af82"
    "nl"
  end
  language "pt-BR" do
    sha256 "07aa8f562f50861ce4794a846b04a9cde91376c2c7c228677f79a18c48c0a0ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "672e63a586e4613e4c5b74c2e88e97a1ce49a0aad6d6857800ce81f039097173"
    "ru"
  end
  language "uk" do
    sha256 "2770ceb1918a546c2bcb73e78b643be14305d91ae9cdab749f0cf4b805554bf9"
    "uk"
  end
  language "zh-TW" do
    sha256 "f238fd163119e809061eaa3ea5da399d7c1a4b2f67ccf42de7cd6800b86b46a2"
    "zh-TW"
  end
  language "zh" do
    sha256 "98d36188d04b154b971e80f620b0b9a76ec08d26b7b08b5735642c70c7479f32"
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
