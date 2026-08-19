cask "firefox@nightly" do
  version "156.0a1,2026-08-19-09-26-00"

  language "ca" do
    sha256 "b3c817b5983428575fd7c6fb3e023cac8745644d0fd47e1de84e04bc0c12108b"
    "ca"
  end
  language "cs" do
    sha256 "f2b8913882c7890b0d4b9855017cb34ac88f9356988d2b4cfe4d7841c1747c8e"
    "cs"
  end
  language "de" do
    sha256 "6160dd1e0fa080be956df3afa8e4e6b0d2397fe08491ed9b9f51727d27135ec5"
    "de"
  end
  language "en-CA" do
    sha256 "2876c0c73fe44a2e5971b411264678f6d9c1cc88b64c7ed858aaf7e0e3d7ab60"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cc5e074548d8934091e0d5ade3012cf2e7893072d70036c4386491057cec3ae9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72ee07f0a6b285287952962cc4557cf6765ab36335bcdc784b24c2cba4eadbf7"
    "en-US"
  end
  language "es" do
    sha256 "015e34df3c201e00745c6f84bc9e8ae37c23b4cbe6f472e1ab71dc2b1272346a"
    "es-ES"
  end
  language "fr" do
    sha256 "37737d2162fc33013be8dccd1bdb5d7bf5d11a963e3e596ef39ea9bdd53c045d"
    "fr"
  end
  language "it" do
    sha256 "76725d4c31637f645e968e1552bba7528e33e3c1ab009a905f67e88bd3dca77f"
    "it"
  end
  language "ja" do
    sha256 "efa5549284c59c24874af4966a84b1ed9d480d90cb95132f4cf6406dff4963bd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "357222a12f54ffff214a3c2f8c3f8dcc194acefd322f1355a54b5b39dc8e6203"
    "ko"
  end
  language "nl" do
    sha256 "46d40b95a7e525cee12d3ba0a45ff0134c92dbf24a72b787fed3781b3ab645ed"
    "nl"
  end
  language "pt-BR" do
    sha256 "584d8c46bacd5df964cc79eefeae0a34c4635e0d3436117e5651e1010c5cdd41"
    "pt-BR"
  end
  language "ru" do
    sha256 "a6c180caa443c25ddb385befdc4973229029406e7b7745f9507406a8e913b63a"
    "ru"
  end
  language "uk" do
    sha256 "80f1d05938d7c01b6879f60cc678ed282e75581c4bc2b61da769e50b6faa62b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "5799c3b6f664932fa87b8ea571583a39c7615f3987e49826b0043422a37273af"
    "zh-TW"
  end
  language "zh" do
    sha256 "69748a64c12774560a053cbe3e885ce068d704ec8bd81c603c97a5540c4291ac"
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
