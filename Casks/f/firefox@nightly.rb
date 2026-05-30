cask "firefox@nightly" do
  version "153.0a1,2026-05-30-09-20-40"

  language "ca" do
    sha256 "6c9e6e0704ed6effdb940cadc89f6b78cb9e1ba5f71f2bdcbea4ba235d6f3595"
    "ca"
  end
  language "cs" do
    sha256 "c666d2494456cc33c87f9535b4ccc1895e33061b92ed1fbb278d8d1f2de4c09f"
    "cs"
  end
  language "de" do
    sha256 "9b1015eb82d10a07c609eee7e2655ce9b17e774c7435fd3fb6501ed0b3cafbfa"
    "de"
  end
  language "en-CA" do
    sha256 "4f2f98283847e002320186873712124894c7e612d7b0001c1d725a1102443702"
    "en-CA"
  end
  language "en-GB" do
    sha256 "10437b6bdac77225b0fec1f2667074c5d2d10e31c41a65ff22bc621153e8f4a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6db18ca059a1d529365debf3d18766f6b55851425e13a3dec94cc5ce5e03118f"
    "en-US"
  end
  language "es" do
    sha256 "3a558129d0f658781755b8ef42bfc39babf1322d963a36a2fdcc0bebbe7262f7"
    "es-ES"
  end
  language "fr" do
    sha256 "3677b54df30abc0cac2c01c3a2c42e60f8a899a0523d6c765f0cc28f28ca029c"
    "fr"
  end
  language "it" do
    sha256 "e668dea8b34cd3fc7e6d2a919751bd16939f9bff4345d9b7b339e88084fafb0c"
    "it"
  end
  language "ja" do
    sha256 "fcda720fe0ccf076fccca7e5d5453943def2a5439168a68c3b5c0027c35e6193"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f2cb884813258732008216dc36af09b06648aaca7603678d1078cbb588c32dba"
    "ko"
  end
  language "nl" do
    sha256 "720ab6a6f2241d0e894992bca2b0831b50cdf1395fe87bc6170602dd848856fc"
    "nl"
  end
  language "pt-BR" do
    sha256 "d316da70988b754b53eb127af12ef6153371c257d864591d00e4ed9b11bf87c6"
    "pt-BR"
  end
  language "ru" do
    sha256 "c9a4ff70e4f8f987618abba765700e7b32e19da0d5b96926e8e9673f40630b87"
    "ru"
  end
  language "uk" do
    sha256 "33244b55df5acb839ab20638fa78a5afb13a8f91d09c14c6fdaf4e44486390b5"
    "uk"
  end
  language "zh-TW" do
    sha256 "dca377ba84b7e7f4b07008c0e336d2ee75450e23a0739c424c0cadd074af93a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "64b2600b7c52fb85e1ab9d997d1832a57191d0097f0c9a9fc586aa081a74b73f"
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
