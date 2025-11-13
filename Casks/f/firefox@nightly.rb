cask "firefox@nightly" do
  version "147.0a1,2025-11-12-21-54-48"

  language "ca" do
    sha256 "545212abbaa119faf6102966b70b4e893ab0d0ed875920624992baca8d2b3af1"
    "ca"
  end
  language "cs" do
    sha256 "6d37e2bbe0da57715710db18dcb1f42f474babc8914a7107d33950c88fe419b2"
    "cs"
  end
  language "de" do
    sha256 "6255c746c2aad1b3dbcb97a636497267c2395bf29f3f6e739854f4d2641795a1"
    "de"
  end
  language "en-CA" do
    sha256 "8757f7267b6f6a8740e65fa00a3b2c7475475ad7e7ec3ad9e8d21773e4f33397"
    "en-CA"
  end
  language "en-GB" do
    sha256 "73f1b69529a9b26b9390952da5f075fc803987e5e92e895f4d4e922f7a2af906"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d3f39b1e891ce66a3f4e9bc141b79dd99a0d009310459455ae7d38b63a94c269"
    "en-US"
  end
  language "es" do
    sha256 "b6ec1ceba3abc81b88542c1e6815e156d3a2c89004e69025ad9cc9410a04b94a"
    "es-ES"
  end
  language "fr" do
    sha256 "e9e78ce7015aa0a01da1193068be6eb2164a2df24aab6bcc0cb4d5cef5407389"
    "fr"
  end
  language "it" do
    sha256 "810324e73ceee23f220f0919d481889ff6ffbbf59e6bf67fad319a8ad12c98b6"
    "it"
  end
  language "ja" do
    sha256 "3bc0d2b196a7bd09f44544a3273539d1a2b1e2884b5ff7a7977212b662bd24bc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e4d5bf840bdc67a8f5d182bae9c09c276f24508756531c32f556cde7916ba52b"
    "ko"
  end
  language "nl" do
    sha256 "b2740045fdeb74dc2947c2cf3512b456e38b506928f2b2be31c3d40eebf95379"
    "nl"
  end
  language "pt-BR" do
    sha256 "253d999d1aefdef801f23214eebd3f5125e02ea398b2a67d8f4adb353d312a1a"
    "pt-BR"
  end
  language "ru" do
    sha256 "fee5cd5b52e3cbe33417b49199e012d5a792c4f240add329b35c4a7c3e52f3f4"
    "ru"
  end
  language "uk" do
    sha256 "d8e9ef295dd8e4293a225c7f3933c4db96df9d2688fb55d43563ac1012786124"
    "uk"
  end
  language "zh-TW" do
    sha256 "18eb571a4660461deb4f628b3c5de491a183f114ff301b106a3e02110378301f"
    "zh-TW"
  end
  language "zh" do
    sha256 "aa6885cfcb83f41aca2c9af9522f25224f44c281c133cea2bdba1bbcf6daf94b"
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
