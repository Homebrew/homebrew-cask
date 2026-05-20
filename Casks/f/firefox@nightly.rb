cask "firefox@nightly" do
  version "153.0a1,2026-05-20-12-40-49"

  language "ca" do
    sha256 "b7aaadbe776108ec1fb595fbb793db916f9ee16fb9f4d09c5433c5b5cb742d43"
    "ca"
  end
  language "cs" do
    sha256 "b3f7d2a7ef49b548703e17249330b5faf5532395576b97e480787eab487e6687"
    "cs"
  end
  language "de" do
    sha256 "4ea31ab32053e0cf095738b493043177dffbe104aa927ab548decb72fb415c62"
    "de"
  end
  language "en-CA" do
    sha256 "1afb5c53f0639f9ffc098fb5b40e19ccf4facc84e51788c19cb9a7205b16ab8b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d010584d3ca9272cf5cb33dd7a3ef9465f84e79bf0943add83b06fcf3db069eb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a478e83d5ba659d1a8d6d96d4b646e535ba22623730187e19dc09edef39c6455"
    "en-US"
  end
  language "es" do
    sha256 "8b026f1ddb4646f149a36778d070820f335b06eb5c20e05aff3b6a1d607f466d"
    "es-ES"
  end
  language "fr" do
    sha256 "c7aa29cd3b0bd5214379668a56996025f7573eef2a0e82eea40cde294cb2d4e4"
    "fr"
  end
  language "it" do
    sha256 "6e66354147e2555b0a3ca34ac8864255654a0658d905914bed244647a90dea9e"
    "it"
  end
  language "ja" do
    sha256 "13b145a7dd1f576743db9d5a1389eeef55cdf04f554aa6d05d75b8907cc03e5a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6d553c87bdf841008f9db0cb82089d5010f53d73f1334379e9326d1f78c5bd4a"
    "ko"
  end
  language "nl" do
    sha256 "3b6b852b64709991bb3629afe9e7e71b62bb6843b7597c7fe99d06d5cb2faeb5"
    "nl"
  end
  language "pt-BR" do
    sha256 "11dd969ac10409fc5e0f297f09a46d86a7f4ffa4bb575a4945f27439800e9dda"
    "pt-BR"
  end
  language "ru" do
    sha256 "96b037629b27a33a411be87b4f3091983db00e1bec8e6f8d738971907f88eb34"
    "ru"
  end
  language "uk" do
    sha256 "f2b2b38b5fe0c8d6a5edfba9a4bef037d75d708407c5682dd14ff10f49a2b252"
    "uk"
  end
  language "zh-TW" do
    sha256 "2fd761796d08deca9b44a0d07cc59e36a4ab8be40526379b3b85dd49e29f0334"
    "zh-TW"
  end
  language "zh" do
    sha256 "fb444856080da21bc66d4e9820a9d6aef2c1a552082e3413b114a7c2b08495a5"
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
