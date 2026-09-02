cask "firefox@beta" do
  version "156.0b2"

  language "cs" do
    sha256 "7712573202ad1513b747535bfaf977b85aa6bdbedfbabcb2995535e2283874b2"
    "cs"
  end
  language "de" do
    sha256 "cf74ea042f059a3263931d759f9ec03cddad5b8473c63c47b8d0836c5c992c3f"
    "de"
  end
  language "en-CA" do
    sha256 "6630f630584db1d983b48f48e3cd0587dd3007a6eafe0d05bf846d0715c60af6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06e8cd97e4f8e1a2e73755994f273ea4032b4d5e051ebe561c3c9a83688645cb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "56656123555bc2feb98649919199c0c0d4fb5a498b49a9e9e491b9ad47af7ae3"
    "en-US"
  end
  language "es-AR" do
    sha256 "73a64d6dfd428c2d0295e19fa41495a641368ab68d5404a39c5ae173ccce9292"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7a31ab79d61ec9cd859ab8f97e01c885673e268037bbf0bcd362f1175427b9ee"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a7ec9b42b74de777320358176b70049b2464db1bba8e7a393d0ae4c0a90826c8"
    "es-ES"
  end
  language "fi" do
    sha256 "5ff1d802d0de39e291e875be0aabb8154f60043b0251cefa7f90332aff153708"
    "fi"
  end
  language "fr" do
    sha256 "05cd5d4320464beeadce32e282419a065cba351d877e2b95d6731052e482dc7e"
    "fr"
  end
  language "gl" do
    sha256 "8fe06ff83437b06bf1b13c5870546d928f22e726977e6bb7a62b7353aa80a3f0"
    "gl"
  end
  language "in" do
    sha256 "001fde1a5331c2a02ad9ca27039dc0a711c7eedaa610934c73ec8d55ecda156e"
    "hi-IN"
  end
  language "it" do
    sha256 "78eacf859b8f6b3dc512cdfa1a76395d03503a6cdd6e251b1d021569759bae97"
    "it"
  end
  language "ja" do
    sha256 "95e1714725760c995ec67dd3c06787a562e6060bdc73eefc5778d5225dfc9491"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8ecdc5a9badb08a60d2f311352b1db4b2c48f888d301f20d20129179b0c8da51"
    "nl"
  end
  language "pl" do
    sha256 "d996a7ec8e1adf95a2f8b425f8b5c4068a34d4cedf80189577c30e10101d396c"
    "pl"
  end
  language "pt-BR" do
    sha256 "b625802c10bdaabeee304a6a4505e9cb5e0712c003c63160f57fcd184013ad69"
    "pt-BR"
  end
  language "pt" do
    sha256 "cb28db420ca60876c076d168c3aaf4138df3fa42b94c35ebf7ff6eac306cb60c"
    "pt-PT"
  end
  language "ru" do
    sha256 "f8a58dbb3419a1395167dff484f2520a685abb5bfa4d156496fd62c95c25081f"
    "ru"
  end
  language "uk" do
    sha256 "4368fbdd77853fbe64cbf38d40528a4f1e6fbd653cdf471a4ee396c7b3b59a53"
    "uk"
  end
  language "zh-TW" do
    sha256 "807053298f906e902cecbd10ee609e12eb9ee949370b3815ed85316b6f05ada3"
    "zh-TW"
  end
  language "zh" do
    sha256 "2c6ee538ed245b78f19fba83b3fa6a12b4438feca7f338a7da5969974a566400"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
