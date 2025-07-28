cask "firefox@nightly" do
  version "143.0a1,2025-07-27-21-12-03"

  language "ca" do
    sha256 "5e3e821da16014b11c1394c90c9e654c6e8bf4b5d035f35ee8f707fc62025db7"
    "ca"
  end
  language "cs" do
    sha256 "f590e6012b0b49acf32ebd03e3a3f0e6d01fde07110cb3ee37112472015b9d4e"
    "cs"
  end
  language "de" do
    sha256 "52202c169961c296322375c386f6c73b5061e1680bc7774344429c10b53b012d"
    "de"
  end
  language "en-CA" do
    sha256 "41866e501ba608af71c3020ec3c18cb6ee3e15052e9c8647704bfbb30ee6283e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "dde193318d160f82497511f47429d3b7a6fa8156f8a3cccfb9ea8973bed5e46c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1a48e01a558a5751ef49250cbb7b52151dbf3d9960d293b2ec62d0bd201af401"
    "en-US"
  end
  language "es" do
    sha256 "44284fe3a421cc90b41f9e20f3e422c49b44c67f00ae4e76ea4ef6af11133ef3"
    "es-ES"
  end
  language "fr" do
    sha256 "d7e224ff1c2b3312f81797847cb507daf42733050f3a927e1536a2bb21b1d746"
    "fr"
  end
  language "it" do
    sha256 "2e1bfd751aeb806207d729dc86e045c9ff0631c89eb4684fd66d2f53acf116ac"
    "it"
  end
  language "ja" do
    sha256 "b97ca5204f6aefc72bf2e62e04efcb14d11c4ec82bf4006d1bd155009f9830fb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "75f46a14582b740851032e20048aa401192473509cb1f9007a40c175b38b47ad"
    "ko"
  end
  language "nl" do
    sha256 "81b322a8891a2aefdbf9425ae1be2dc40b6ef8aa6fd3b59db9d188f95fea484b"
    "nl"
  end
  language "pt-BR" do
    sha256 "1654f7b726e3486e86f7dfab3f38b29ce24addae58afec6187d297de07459f1c"
    "pt-BR"
  end
  language "ru" do
    sha256 "f15d4d884c0c528a2c30c455f17f89e7c7b8c220e92eccdd4f15ba7332a3ffbe"
    "ru"
  end
  language "uk" do
    sha256 "7814c9e50e9c86a053a77b53f1939c7b9159102c434ed25d28767c37bab5ebfc"
    "uk"
  end
  language "zh-TW" do
    sha256 "f82f55fc6eda8c201d64a696c60c5ae884c82ae902a373b9ecb7fb6f9da5e119"
    "zh-TW"
  end
  language "zh" do
    sha256 "625221a43ade787f0085934b0291576ce232586a024fcb25c8f4d43cd25d4aeb"
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
  depends_on macos: ">= :catalina"

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
