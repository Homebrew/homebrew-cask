cask "firefox@nightly" do
  version "157.0a1,2026-08-31-19-30-04"

  language "ca" do
    sha256 "380c39fee3cec94e035825cace96dad90c84490a6f9046f46e010943e94f955a"
    "ca"
  end
  language "cs" do
    sha256 "2994c78a91c7fdd4fd18a718f2da24ba06cbb20e87367405a3aae173797cca43"
    "cs"
  end
  language "de" do
    sha256 "19abae9872232cb82582a8f76bf10ddebf8d84bb85faf86efcd3bb4460111c57"
    "de"
  end
  language "en-CA" do
    sha256 "3bc7ca60c999a97066b0fad9f6240e76e9fbcab0ae9bb24f9276b5307f774f0b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e11097c786322b752ce7766e9862c21c45c6a3720b06602cec8e38d3549c1c18"
    "en-GB"
  end
  language "en", default: true do
    sha256 "861995a83ab803f244338b5dbb24fcf01872702c0a65b68af250806318ae22b1"
    "en-US"
  end
  language "es" do
    sha256 "4380138d7f8fa8f76dcdcf50a066f5cacc23a9fc4aa1d53be52a995c50a889f0"
    "es-ES"
  end
  language "fr" do
    sha256 "8989605b0924bd3f216e9ccecfd59626ceddcb9b81ec5424806a404345e651bf"
    "fr"
  end
  language "it" do
    sha256 "6081048153e904ce4207c7bd5fdd6ca0bcae07b08f71f69fcbe40f08addc893e"
    "it"
  end
  language "ja" do
    sha256 "81726a83c9fd83a3076b3ade340b2e1de448b632854d979a46bce484fec97b3c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dbe2709cd005b88884565b7f13050182421ddb4289ed85ca43826fb656242d78"
    "ko"
  end
  language "nl" do
    sha256 "ffc7d9467836c8464fa26f5bd30767e89e9456431926bf1cdde0c6b4b203a9ca"
    "nl"
  end
  language "pt-BR" do
    sha256 "1f5ba7bb9a5594791af918151b8cb056ad23fa1eb103ccbb6f21822d96ac6bcb"
    "pt-BR"
  end
  language "ru" do
    sha256 "f0cf20a529b7ab2706cba4b0f03851df75bce51ce66e962052aa90a59d4ed229"
    "ru"
  end
  language "uk" do
    sha256 "477bd3f7c1741f4e97b18f5565c9eb8c095738e9b15a0ddda4856437b773ae0a"
    "uk"
  end
  language "zh-TW" do
    sha256 "02463f2a16893916cf2c189bc2ff8b79cfa7656c278eb7ec84e84aff2e385eb9"
    "zh-TW"
  end
  language "zh" do
    sha256 "8962b1b8fa847cb62a723db48e2632a45e82d7edca4c1ebb87fe2f1ff500138e"
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
