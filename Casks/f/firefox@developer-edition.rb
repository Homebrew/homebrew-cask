cask "firefox@developer-edition" do
  version "142.0b8"

  language "ca" do
    sha256 "f6dcd5fa9fc87022e14da86a83648b0eae1fe801e52fce800b26d6071114d07b"
    "ca"
  end
  language "cs" do
    sha256 "23e302f9a8d0cfc90ccc973cabb08725a214cb5ab7c04766fdfe424f3f4f0df4"
    "cs"
  end
  language "de" do
    sha256 "7afd36f1d9a8b6c8873502a9fe258a3d16175ca5af93dd6bb8b8b92c5c6095d9"
    "de"
  end
  language "en-CA" do
    sha256 "328b67b02834cac4214852d4599a232ec4c4598b65528b9f4e7ee4816bfc00f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ad89beb8161af249ef8004ff57f28f03cc9f647e39d6ad06a419eea68c72740"
    "en-GB"
  end
  language "en", default: true do
    sha256 "546d33ea940272937d5ff8f8b8a19cff573151eb3a831eb1681ed36877f5bfb9"
    "en-US"
  end
  language "es" do
    sha256 "c588adf5f8843a3a2034346d7b52a93013d3c12b135893b12217276a7226967e"
    "es-ES"
  end
  language "fr" do
    sha256 "db63fddcb9878734300dd88c6e318cb2c45a4015f004eb8ada4e571178fc03e2"
    "fr"
  end
  language "it" do
    sha256 "d41913d412e3baa6581a399c9537ce39cd3275d7d6451c946aee06bfb330e946"
    "it"
  end
  language "ja" do
    sha256 "916a42ef73caed90ffa7a1ca7e3d66aa0686657e1a7a92f97faaf65df37f214c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a90c437459110b8a7eae02e252c4bd750f2a544873f212e0298ec662b4db64b"
    "ko"
  end
  language "nl" do
    sha256 "e623a8c23d596ac815189f3817cdd0b98f65cb91447dfa64ce8b4c1431c08ac9"
    "nl"
  end
  language "pt-BR" do
    sha256 "f9e29317e5d92abde4a4cb6e3b4729e970ab8aca204b56ede52a2fc456ca8a9a"
    "pt-BR"
  end
  language "ru" do
    sha256 "6a8425dcdc6b2f50754a2442fbfc6058091359c3102d99decc80aa6e53feea48"
    "ru"
  end
  language "uk" do
    sha256 "0863567ae3dc515e997ab0a6a5c685becace31548298ad21ed90f35d5f02135c"
    "uk"
  end
  language "zh-TW" do
    sha256 "a962da90de1be7a5680c05fc7648161a9ab09196f85219f01eb69e065f262bb3"
    "zh-TW"
  end
  language "zh" do
    sha256 "902d92d7a7f9e6d4878cae5784147b64d0bcd01b153f3a58a8e4bdbf7ec35626"
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
