cask "firefox@nightly" do
  version "158.0a1,2026-09-22-09-35-52"

  language "ca" do
    sha256 "e5c9f937f580ff3712fd2f9724f5f16e52c9da0e2badfc493cb2c5acd6b2fd75"
    "ca"
  end
  language "cs" do
    sha256 "d68b979c90c01c58700993ca04122105f47d0160d524ff9b02f2b239e7fcb0cd"
    "cs"
  end
  language "de" do
    sha256 "9b2bbcf068176a50e0e9b004d8453a71ff458810d0ce8e50e13dbfe358e0142c"
    "de"
  end
  language "en-CA" do
    sha256 "5de38902506143cca5889d8393881eeb7dc0d20ee8dc2215fafc2f7bf9f4bec8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c47944e45aff7c7f5442a5323368eb889ecb5f7c3b00d24d21c0b32470d3d581"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d29346af179356212798fcd67a4f1e38ef2820ff540e691d126a81d57b18f3a7"
    "en-US"
  end
  language "es" do
    sha256 "20350e8bdf7254733e9b7ac19fe41cc75eca548ddc5c85f6670e2bd062e6de53"
    "es-ES"
  end
  language "fr" do
    sha256 "6e75630fb69f5204d99b7cd5e383f8d18c3aba23e556ecc6409d72464ff36cf5"
    "fr"
  end
  language "it" do
    sha256 "5087a38d7988e0c28d6f16b2ab2ada307382ad61a741f4b6f0c5c9eaae5140c8"
    "it"
  end
  language "ja" do
    sha256 "10720d13e8608053c018ad943875ebfc19e289e9e0e7d6f4c7d1230fe94b642d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60bc18058153769736f590e687bee98b5b19f11c137748b6a175ad5d15514aef"
    "ko"
  end
  language "nl" do
    sha256 "d2fba02b068b0e3997df47ceab945192c4f164c290f09a11546bd79c26143efc"
    "nl"
  end
  language "pt-BR" do
    sha256 "a16712678a2368611f4c419cb0e5c748499039952ec4bd7a1a850ac56fc90290"
    "pt-BR"
  end
  language "ru" do
    sha256 "3b5575c51cc178c8e741cc3db014c98675a072046475aeb90bf2cc5be42fb93a"
    "ru"
  end
  language "uk" do
    sha256 "ba6303dee4789c8e43c6adc60a40e457353aaaf1698e5b8e68b93bf96eb34972"
    "uk"
  end
  language "zh-TW" do
    sha256 "83f14e646dbcdcaaf8b69adbbeb92173a07c5c722633e5481e075d81836bea40"
    "zh-TW"
  end
  language "zh" do
    sha256 "8ff46aaae2511abe282084e71a4696a4c1eb800ed57f1f2aa494f8df4b96ce52"
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
