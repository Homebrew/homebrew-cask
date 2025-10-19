cask "firefox@nightly" do
  version "146.0a1,2025-10-18-21-08-49"

  language "ca" do
    sha256 "e71d372a783f939858c99b3e6d9de7ec622fa2b21dae85921fa0035a095942c6"
    "ca"
  end
  language "cs" do
    sha256 "8b0e3a4248dc494a05771d1e18e55647510e9fcd936f0dc90702d080ca3c5eee"
    "cs"
  end
  language "de" do
    sha256 "35509f3e934bf09f82a77594a4df81156fadf98bf658312919bcb0f46851ace6"
    "de"
  end
  language "en-CA" do
    sha256 "eeb7ddebdc34e42b842906a357d01cfec8b48aa377b70fe2f4fb1b1a00b8b550"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f8cef1907b5997ec9c85858842815c3b41ba2f40cde7b61b292242ae98a323a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7c9ae34e35ec23408c8332b2da7b22c6eb564de91dd35c4a669c0ef88d96c395"
    "en-US"
  end
  language "es" do
    sha256 "f5df802aa3c32a9bbcb823623ece0a5087819b7fdd13713ba4417980aeb8ae74"
    "es-ES"
  end
  language "fr" do
    sha256 "d6910163d950c9952542c4420b8652684c2a998ec7cb8016001919fa5f4a727c"
    "fr"
  end
  language "it" do
    sha256 "45ae1f7b431b656e85c13d7a507a8f6e1a73826931bd6720e2c2469600826739"
    "it"
  end
  language "ja" do
    sha256 "41aec1c05803d622f4185a8b4a3410e343b5d376c34aa9c33be79a4f4e338f00"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e017aae34229e2e932f93eb8b465f9cad6ad265e3c7735602e97cb58ed7a2c7f"
    "ko"
  end
  language "nl" do
    sha256 "01b77b229917ae1b2ef85e58057f0ef66b5ed36fbc2f16a04524beb994ceb491"
    "nl"
  end
  language "pt-BR" do
    sha256 "45e92482bd200199d5dd42aa915ee70f323c3d82a23fa0acbae91bca8cb6aac9"
    "pt-BR"
  end
  language "ru" do
    sha256 "eab6114ed74fb74c16b490d7bca2ef28411298bf44de21699c27948f20406ca9"
    "ru"
  end
  language "uk" do
    sha256 "b19ac9ae0fb57386dad41936fcb304e17294fc0bdef1cdad7281a7db6bd76b3f"
    "uk"
  end
  language "zh-TW" do
    sha256 "a6a31974e2c6500b84f1e5fe7fbe8e99e3eff7a481dc014c095608560ec77eb3"
    "zh-TW"
  end
  language "zh" do
    sha256 "a149d26042d4bd6bc32d92dca63993dd30554b7d4c77d0ca7959eb4a2cf3bce0"
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
