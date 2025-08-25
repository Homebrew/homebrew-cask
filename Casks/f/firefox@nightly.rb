cask "firefox@nightly" do
  version "144.0a1,2025-08-24-21-40-58"

  language "ca" do
    sha256 "6760e8ec198ae4f9cd25a7b2e81220240a167815ca8ce1775cde17a8bd505c53"
    "ca"
  end
  language "cs" do
    sha256 "6eb22fe8fac455bd38b6cbea89eb898fdf555a25715b08785f74517fb143a80a"
    "cs"
  end
  language "de" do
    sha256 "157602fa4836592a22653e55488e84800c3e5056e897f136eafdccc7ca22bf54"
    "de"
  end
  language "en-CA" do
    sha256 "9bb9aefb7026df77f5d6dca93d5b1a6f3cfd7c60a72224ddff643a41c946df0b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f94084cbeab31adb565e939673414f4abf76dba6fc89ed87487c6861dac97342"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8f40dce6d698633d97561fdf792309b84776171206a1eba974e8fe1fedadb7a2"
    "en-US"
  end
  language "es" do
    sha256 "680289714af886464f6f61e21df7712efefee2c0ac2253e83356a72254da2b73"
    "es-ES"
  end
  language "fr" do
    sha256 "0d389bf5e4082302d09edc1f9585b98555b1ef92704eddcd9297bb1599ce0e9d"
    "fr"
  end
  language "it" do
    sha256 "2538042f87d981ead097b17a3ac9e968ca7cbf22fa24a3753c852f9a3a0c36cd"
    "it"
  end
  language "ja" do
    sha256 "5b87c967124b313084b69a4a796ca29e7e14c4919360bceca9decce9fc4a01b0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "87f7ec217a19828af182de3d6d5493bb2598bcfb282513acdd924cc603377757"
    "ko"
  end
  language "nl" do
    sha256 "4cd9f68d6fb700a8ccd0b2b609541ebc69338c2537526d9ab8e12d56f6836cfe"
    "nl"
  end
  language "pt-BR" do
    sha256 "3b5bd3ea384dfd849c00fad60b53a32ddf99007aec522e64591f5b61d52a997d"
    "pt-BR"
  end
  language "ru" do
    sha256 "90dcc15df4fbe392b79f5c4caca1f767e3c01d4a40d217d17d9d630a5d589281"
    "ru"
  end
  language "uk" do
    sha256 "c6e4b053157b252fbdce954ba103df1cf810e189717d6784c3dfadbd805afbe7"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7b64f642f0aab6b1418aef88f5ec4935a6b4f4c3179143195fdb761f40b1844"
    "zh-TW"
  end
  language "zh" do
    sha256 "38996f88f7db6f8fb549dc64468bda1ee7a0107e5ef1172407fcfd5440e742ca"
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
