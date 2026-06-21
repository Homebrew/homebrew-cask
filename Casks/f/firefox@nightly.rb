cask "firefox@nightly" do
  version "154.0a1,2026-06-20-21-19-17"

  language "ca" do
    sha256 "8c505e88ae76162c75742a959fff6fcd98ff8d3793d76813d3fa56bb88a7035a"
    "ca"
  end
  language "cs" do
    sha256 "019572ee9171cf97350e7f8d136f27eaebbb1ad42bd81294308b860c366db35e"
    "cs"
  end
  language "de" do
    sha256 "177828870c4519677717a02b1a2735f8dc3a8068df8809f862036dcd51447390"
    "de"
  end
  language "en-CA" do
    sha256 "52b5bb644328925aff3bea67b79fb05eb1421e0bb339ff655547e21b916e9866"
    "en-CA"
  end
  language "en-GB" do
    sha256 "637d595e957ff778b0c59ea35e50b61048035e3ae7eda5a5296caf89f48c1bf2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8b5eb64b937ed26ad6956f9470fe3f1ba680cc01ee70b4542c188d7d7ef8c09e"
    "en-US"
  end
  language "es" do
    sha256 "8f4a61fb4c45a65000276227f4064894b221109fea4038b71bfad095d3d33917"
    "es-ES"
  end
  language "fr" do
    sha256 "9ff3601b09868f0af170258a7ec170440473339a61ad53ee4731775e8a58e696"
    "fr"
  end
  language "it" do
    sha256 "21d47b8c4809d15a992fba36c6153d87dea72a74b94ccbd4505e78dacaa54167"
    "it"
  end
  language "ja" do
    sha256 "3f9bbc665aebf8059e7246d6d6c0ab07480265f8a34e43549a6e789c59eee59a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "44ed66c981bc88fa60d5b873e312e8797b1d720a5662a24fa1c0bf21add09d3c"
    "ko"
  end
  language "nl" do
    sha256 "2e234bac7b0a1f8abbed5a2972e4f885addaac70e28c7d150f2ac6482cd2f282"
    "nl"
  end
  language "pt-BR" do
    sha256 "6c7be50ffb67b2fdd4f685af97f1cbfe78a05cf6eacc330be4506e138e6e0d9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "e57cc92d1218c97929e9a42b4c6ab8a2ad101303fe6b258bb93fd60bece3a131"
    "ru"
  end
  language "uk" do
    sha256 "7561471881dda7374fdcca2173b27a9b2caa7ed769b7cbefd89be14ae060dcc3"
    "uk"
  end
  language "zh-TW" do
    sha256 "c94cb766f7b5510c40bcfe29022c5eb6e2d0b48e37f3f14741c481535a899839"
    "zh-TW"
  end
  language "zh" do
    sha256 "58c8a1811e300ee7efcb5cab04b32c0fd3a709b259676908a3214a2c4131e4bd"
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
