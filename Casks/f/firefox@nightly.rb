cask "firefox@nightly" do
  version "141.0a1,2025-06-13-09-36-48"

  language "ca" do
    sha256 "b3c2ddaf1bbed8b961cc9ff1c21ecfe748da6027512c72ec9cbc50e9e1807c1a"
    "ca"
  end
  language "cs" do
    sha256 "5212d3a3a5ebf279aaf25cab23098227a2f7e726273b8c5b9df7be2408328be9"
    "cs"
  end
  language "de" do
    sha256 "95d7d1601cd47b017e6c510f98beb483e429dff0a11e2e293b44913aa7e7f8c0"
    "de"
  end
  language "en-CA" do
    sha256 "50e1c8428a1ea8909f0a559736357ab186f7ee7a04df535b2cc8b80689e7732b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1b1a1cfa575ba159abf8d8b1a786fa61856d4c40898a17bf727615f67ebf093c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3134b549e11b264cc3b3b18a1923b3f21b3d709afd444a66e23c35714ed07709"
    "en-US"
  end
  language "es" do
    sha256 "540ed3706a7e6d2ef8d93c25a323a982e99a22b3ef3a071ff492a3cc5e48232b"
    "es-ES"
  end
  language "fr" do
    sha256 "58a6265dcd80421b59f7e554638717aac8f2a73bc458b8a6583ffa8e9d8c2c80"
    "fr"
  end
  language "it" do
    sha256 "6747c7d2a97337b1d7131d618897fd35b2ae26272c6e7ae4acd452e7facc7ef9"
    "it"
  end
  language "ja" do
    sha256 "b2b1b67a85582db4391923cea0054690c67654f14c6cd7b34457749466b51e7c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "aaff0a29d605d9ffb53230a6d7e5ffb68bba1a4c482983e5e20a3f9e3d55ffb8"
    "ko"
  end
  language "nl" do
    sha256 "282bc806ad07c90a5817f908a5d16b53dc8d61e7f80c7a18ac40706611624400"
    "nl"
  end
  language "pt-BR" do
    sha256 "707470d85ea6a9c41f63fdf5fd27825db11bfea790b45d5b4cebbd4edce12de4"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ee3cc0e66dfcd3d24a307c409e43d89473198d0224115ea4f0b41d4cc695515"
    "ru"
  end
  language "uk" do
    sha256 "635259ee262faf46780821b0e4ed588089c2cb0e66de72afa4dc7ccd77a505e3"
    "uk"
  end
  language "zh-TW" do
    sha256 "ee48dcffbc6a6503baa0e943188fddda6b374f29c9496d45b0243f1461f0a8a3"
    "zh-TW"
  end
  language "zh" do
    sha256 "6d7ff6f5e3679a6e2a0211f3b3e9759aba583caea4a032e165604bc70da23d23"
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
