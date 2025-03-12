cask "firefox@developer-edition" do
  version "137.0b5"

  language "ca" do
    sha256 "7712676118f337d44b08629a4ea59a86dbdd33be1508a0af611dd1bdc06f85b6"
    "ca"
  end
  language "cs" do
    sha256 "39b2940b36d4fbf9f5bb848b4b1b08e107e0d41c056f072c99c8ab9e5673efbb"
    "cs"
  end
  language "de" do
    sha256 "8a7ae093a7de083399dbfd7fa898102852e6badf69742877a2b5013ad55ec429"
    "de"
  end
  language "en-CA" do
    sha256 "a24c36053b360983783abeef699414aaa52d927f41da57ec8c7be05bca5fcd5a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a08a9bcf2d30653ffc1af6d8a9d1c35d694f79ca67f123454a82bb55b0a2b3cc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed73a80d59ab14fab6a733cdedc0ddf3f36a8bc3291e60e5a100985f8387b68e"
    "en-US"
  end
  language "es" do
    sha256 "179c01868b6c1e3136625fe55537eff1243cf1e46d2761fd81fdf4b2f875e638"
    "es-ES"
  end
  language "fr" do
    sha256 "e8dab29f54f968f022fddef4072b77fdde88d2adf9ea5cdf9c4064de0592a65d"
    "fr"
  end
  language "it" do
    sha256 "85c54459381a7e391f78f15666516cb8992ce8454300d55325b34129f9d35574"
    "it"
  end
  language "nl" do
    sha256 "d321c1b32333874ea3cc1a6fd20b086dd059e764d3c05a2a06fb1185248e4be2"
    "nl"
  end
  language "ja" do
    sha256 "c1ee31fa1c42755289b062717ed805b46a4453d7c5ab29ec2b0a10f6d8c5d674"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b9a820d17d7d97b579ccf730ff20c799a039a7395904ec43d889e747c9cee42b"
    "pt-BR"
  end
  language "ko" do
    sha256 "656b5e5509a667d1f0e9179db9b8c3dde9e123175c5f480f7f8816e0b21d660a"
    "ko"
  end
  language "ru" do
    sha256 "53bc15237a021f716aaf2f243247ea53a08b5efb29e2befb2c33495dfef9af01"
    "ru"
  end
  language "uk" do
    sha256 "7f7c099b7d7db771b63ed0fe86473b024688587479496fc82416ffa6e94b020e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4cc914530a9fb5303fb920c59a8cba06d60fdda62efc1095c2c8f29e6e76c63f"
    "zh-TW"
  end
  language "zh" do
    sha256 "c82ddc0fcb9f25036b8ab13a9277b68dfa3114daa1723fcf00fdefaef216dac2"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
