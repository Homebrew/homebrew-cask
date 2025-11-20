cask "firefox@nightly" do
  version "147.0a1,2025-11-20-04-22-06"

  language "ca" do
    sha256 "72cdbefa8e900ef506652b43944e5a9586ec6ab73dfecaf7e5c1a5455769bfea"
    "ca"
  end
  language "cs" do
    sha256 "803ef14722e38a0ef12a0f575389c17ef673bb2bf180ebefc76dccd1563bc7fc"
    "cs"
  end
  language "de" do
    sha256 "a95b1ada7a09934adbe2c13adad0f61bc939ca9742fe8302f940c1a97dc4b90c"
    "de"
  end
  language "en-CA" do
    sha256 "604168ffebdd2989adbcf3dc6304ba9c846681fbf16eafca5d6c668a449d9b3b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7dae60d8fac40bd56a9e4a226aa5262272dd24a9307e67a1756b35661b3b62f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c709d91d9887a9f6df62c1b75a8fe9056f6882915dfe69ce7ff6e75a2b55858b"
    "en-US"
  end
  language "es" do
    sha256 "512f1b46caf65f1a335ebeaf8a8af01eb52366983a61a1969fe1c9ab2efc6825"
    "es-ES"
  end
  language "fr" do
    sha256 "16e5cf10d2544127491db7cde4991f090b05f61d3facf913674169c159ff41c7"
    "fr"
  end
  language "it" do
    sha256 "1c895416f0004ff9299e4952494dea63968dc5a4e42229bd5fd2cd9c2f12f7a4"
    "it"
  end
  language "ja" do
    sha256 "6f3d542c78ee76e776088fc350f2ed57e51c4837515a85b645ce5021e69d0a86"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8187aa18113b740de58ba55161414b0a3284eb7841a05675c0f6188e48cb134a"
    "ko"
  end
  language "nl" do
    sha256 "b7a6478190fc0597e8e6357de802233e1e965892648459e6cf0e33902b8a1ccf"
    "nl"
  end
  language "pt-BR" do
    sha256 "0e6e4744fc898d284c9af50dee062316608c777e75950bd63bb5ad0b40dc9590"
    "pt-BR"
  end
  language "ru" do
    sha256 "e4f731aa2c83238cc4cf9fa7dfe52afd3c7656aab965a4df3d7aeb3ce6e52728"
    "ru"
  end
  language "uk" do
    sha256 "f5b5548277e9ab4da474099b932ed7dcebff7a141193e26b4ecbdb10b43c29a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "53286ad58f678a6af09d664cd8c8156c6f6c35ce68d38a6148cfe32b16029559"
    "zh-TW"
  end
  language "zh" do
    sha256 "867dd9000ed8925fdf07f9843edb7eee09d2ee630c8ae43d6c7886da7c6e0737"
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
