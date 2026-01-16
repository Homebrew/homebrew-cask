cask "firefox@nightly" do
  version "149.0a1,2026-01-15-21-06-04"

  language "ca" do
    sha256 "b70e62804ae71e4f6a3d55185cd5bd59e33cb2f58fa7b7998251d0b34026ebcc"
    "ca"
  end
  language "cs" do
    sha256 "89f28d322d6d7c54dd9d100eafa17b1e5cce2e48d7919a8ccdd5fdb61f6e070e"
    "cs"
  end
  language "de" do
    sha256 "3363bc9f47bbee2e257e0c55887e7c4db95bb94e6e11c0b7ee728d3e745d790c"
    "de"
  end
  language "en-CA" do
    sha256 "c00fed9ce8976ea613e8573ef02693d44b9287e7b117511c4d51b5168ddf29c6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ae1ada0891913062608ec3d36ca9753b267299cb95bd8018d418bd17902a96c9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11a2cc5d242d5150b8105040299cefe94df2a170444d3aa0f882eaddcf792bf8"
    "en-US"
  end
  language "es" do
    sha256 "e6cae07bd73609c616124c909951c135a9a1bfded52d92eb8a9631a7480ea705"
    "es-ES"
  end
  language "fr" do
    sha256 "6cdd56d87920b27578f5517c9715311feea5e12a84d9690aa9550e1501661ad7"
    "fr"
  end
  language "it" do
    sha256 "44b6fd5b0fc8cd4f960e3ac6b2750070cb84b3766c66964f9b16e2bb89e38dec"
    "it"
  end
  language "ja" do
    sha256 "0547427f85c4ee3c4e78ec635be9e9794af79bcf9ebb45f77c93e53eba13b8b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "074b1fb55565bd6fbb9c936834ba66048d3e72c8d55fce6313144db06a7b4ed0"
    "ko"
  end
  language "nl" do
    sha256 "15bc16ddfa5215cdd8d0d120ff6df7df6fd7b43f2b4d9d3e52ead00a6c5074b0"
    "nl"
  end
  language "pt-BR" do
    sha256 "10414dd44fd1e145d43417364453f09181468bb45d9b61e26ea5c8aea024cdb9"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa57f8b1907fc6cbbd67ce5bf9a4cf5bf9004c959f5a624b8c8dad0df58659f6"
    "ru"
  end
  language "uk" do
    sha256 "be70f4efbc848e6e125154bd782b0fc9cc5ba2cce8bf2f15dc4d89ad21924ccb"
    "uk"
  end
  language "zh-TW" do
    sha256 "c3586216bd67289c59022ea37e8248a0cc4d027b892279be0e8f433fda014f12"
    "zh-TW"
  end
  language "zh" do
    sha256 "bf478f0a5a04cb64125576127889c3e581ee0759757c4c66b99c459384ff061a"
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
