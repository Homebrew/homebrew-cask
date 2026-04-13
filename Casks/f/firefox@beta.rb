cask "firefox@beta" do
  version "150.0b9"

  language "cs" do
    sha256 "fcd5820250f567049aa4fbca2287976da4909b614615570af4178cd87e771f72"
    "cs"
  end
  language "de" do
    sha256 "ca8ab04c694c803a3a226ed0401656ba8f5f5b140a59a709f9a11a88beb9fc9d"
    "de"
  end
  language "en-CA" do
    sha256 "b731b645e9eb4e6a4c3c9e93224ddf0709d98ac4d721517ff80ef89c98777c85"
    "en-CA"
  end
  language "en-GB" do
    sha256 "15aad67386eaaad66dc9bc5472d3d66c603e2e20e74cba4fd21c02a59a866ffa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "846fab82aad86766805f12e34cf2ebf3fff92e21f294944d462333da0100b8d5"
    "en-US"
  end
  language "es-AR" do
    sha256 "1ef1ba83cb2cd2488dbb5ac123f9887c287d8eca60f5e433414fb23e496d24d3"
    "es-AR"
  end
  language "es-CL" do
    sha256 "87140ae42917911dceda41ed430013e2dc49751c82423ebc31e6f3c49be799c7"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8cf5e6488cb13c13011db16ab14ea0818c110489eda9bb270288ea04fe4e5618"
    "es-ES"
  end
  language "fi" do
    sha256 "1a1fcdad8f7449338d4932d692e18ddaa510787d5644016e0816f78d89c06973"
    "fi"
  end
  language "fr" do
    sha256 "ea861b85b5323125aa181525cc4cd8aae3d7e49b058274b006774997890e997c"
    "fr"
  end
  language "gl" do
    sha256 "d3d9eb028ebbf8f26c5c003df9ffbdeefd83a05feefec72a29e308ebdb997b87"
    "gl"
  end
  language "in" do
    sha256 "084d5a6884f2bf42180f60b8d9777d0ce4be36e3b6200c0415e0dafa115e107d"
    "hi-IN"
  end
  language "it" do
    sha256 "0698424e1fee20b20549c4859f811bfeb9e9ffb51ccd4e3a8c443854b740975e"
    "it"
  end
  language "ja" do
    sha256 "abf0dfdea8c91dc9b55c319bdf7dc6d7b98aa98cf55a3818182b3174dd8dfb3e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "97eaaf448f028899615f99939b05927a08083401154096ea5c401d1ea765fcfa"
    "nl"
  end
  language "pl" do
    sha256 "edbde2c038d712a1d1f819c03b954d2bb4e6b7db397ab40f6af6f4470a3807de"
    "pl"
  end
  language "pt-BR" do
    sha256 "1c97251008b837ba78089734b39bed2a51b6a093e59b1fbcff29cea53a063314"
    "pt-BR"
  end
  language "pt" do
    sha256 "7b25c3d365c585b81596bba34a99f39a2eeb8357af00e40867c7bab1ec2d697f"
    "pt-PT"
  end
  language "ru" do
    sha256 "fbcdee249bee67b3fc8cda9e2f4c7d4c598d24c4e4ed2d2e1f1db3c491c5019f"
    "ru"
  end
  language "uk" do
    sha256 "b3b17267fd2eac536900216dbef708288da76c21f035b60bb04d68b415ed8cda"
    "uk"
  end
  language "zh-TW" do
    sha256 "5769f5ee36c20f9eb30f5eecb9546ed168265eb03b918ee3f28e857d2ad42840"
    "zh-TW"
  end
  language "zh" do
    sha256 "5e8e3587f75df19c5bb9b3f935c553938e0830f329023668035ef73bc1f9fc57"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
