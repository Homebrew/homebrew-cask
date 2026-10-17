cask "firefox@nightly" do
  version "160.0a1,2026-10-17-09-52-11"

  language "ca" do
    sha256 "b9efe820a94a92cb170c8facfb517d485d696f57fba4b59ca2937f2e64de01e5"
    "ca"
  end
  language "cs" do
    sha256 "155e682cb68f9b69febaed5f972adb61d7833cf07d6f596131a7ad99f6b92aa1"
    "cs"
  end
  language "de" do
    sha256 "4ef6c4398e9dcf3eac5466b4e7d533ce3ae0a1466ba3f73dade7e851ad7c94ea"
    "de"
  end
  language "en-CA" do
    sha256 "7db493054fe2b4edf69ce7e6ee8f84b4a0a34ee9dedb34bca874e3d375f5926a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5afa08b4921298a720b9f99367fe260a6f8f5ee28ca872724a0c598536e79d74"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f4c1d435700d8320f7be3f33beb55d85ae26f637a1c2a52f47702752d1df411"
    "en-US"
  end
  language "es" do
    sha256 "63411fc566b3f53cb0cd1c43cd3b413c5b60ee250dbd5fd14b2b4a27f8ba3490"
    "es-ES"
  end
  language "fr" do
    sha256 "d127233a0f879398576374a487b5395a60fd9828fc57ae16ea8f31691a01f56c"
    "fr"
  end
  language "it" do
    sha256 "b52a4df8ba44ba3cbda4d355af589a9c5958eb86c40345f92186e7ca003db018"
    "it"
  end
  language "ja" do
    sha256 "b988213abb2eff5f6614435b6aa37fd35f63cfb9ea46bf1d94daaf4b1e382f9c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cab57564d91e58614a39ea90e812fc95048c9cc84583f213947ceae6b49d415f"
    "ko"
  end
  language "nl" do
    sha256 "5ef3e14db74ab99a45aaeee8f7c9d50900d6ac81038c029ebc9b0b99162bcfd1"
    "nl"
  end
  language "pt-BR" do
    sha256 "32186caf697958cb828dce81613de53a46af73b7e05a8bb29e3ffcf2b415c8d7"
    "pt-BR"
  end
  language "ru" do
    sha256 "f34882b8e157ed4decb1b33ff22a7ffe6e2bf77737cb8f714b088828656dec63"
    "ru"
  end
  language "uk" do
    sha256 "46fa669dde2b903c8925617a3959dbed445ce9218587a5e0fcf1347f1b4224f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "f310b547f84d83b50ccd182dc7d7f04e17bc93253cac26cef42ed109de9a209c"
    "zh-TW"
  end
  language "zh" do
    sha256 "92d44a36287d02d6e06f54c0e222292a474f7235d98e2ac7e8dbf54c11e1825c"
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
