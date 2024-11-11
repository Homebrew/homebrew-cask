cask "firefox@beta" do
  version "133.0b7"

  language "cs" do
    sha256 "3a945a60c43b566b23885b249a7c3dd4fdacb641db6c2b8eaa43b687401b1efc"
    "cs"
  end
  language "de" do
    sha256 "bc0dddb196494211dddc137a159f67194bdf406d050912bf868660ed4720ae5a"
    "de"
  end
  language "en-CA" do
    sha256 "d765bdae4984671504bd5556b54efcd06f8dc45b0843f3c08eda6c06d03ebfa2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4689936acb37523ab757012619dd4bb8d75e078283981796cf697caaa7c67588"
    "en-GB"
  end
  language "en", default: true do
    sha256 "239e62e0e222029ad1652c0f082ae1285441302cf3ecb62f6d75b328f9b266e4"
    "en-US"
  end
  language "es-AR" do
    sha256 "9de82efb76236081fb49046986a21f2a95a56de9cd44d76f399b990d738511dd"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7f56709f17e532e117109c8f5d95eb6f725397c3adea172bd8c2fc177364abc4"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f4a5fd0e0626d1e0a0c4d57eb8d46817b3814e4be45542d995de11ab8661e11b"
    "es-ES"
  end
  language "fi" do
    sha256 "d7dcfa4771094d23c22a6643ea484b320ecea557cff64c7ffdcca478e96fbbaf"
    "fi"
  end
  language "fr" do
    sha256 "35c6de0c684a7843f586bca8314ca0647666ebbd6ff8ea9b0d08453b7f1ce99a"
    "fr"
  end
  language "gl" do
    sha256 "6e51d8562aab7e5d6ae956c8e8972e5df76081df7948592c654f467e5eb24619"
    "gl"
  end
  language "in" do
    sha256 "d19268afb8d8854517d5371fd5a1ca94f9174a2e06055de5eea4ddb11141c487"
    "hi-IN"
  end
  language "it" do
    sha256 "c896c183405911446bba43c2ee3778a945b1a903ca8462db9ffc1611cd76046e"
    "it"
  end
  language "ja" do
    sha256 "92da994d9e27ec914af438bf0539ea4ce20e059108aed1f0da0a8f6f9c7e4f9c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cc04dcc28fe65f445f7865d788d8375f1a2e79c75203dfff19d6584d1b712e9a"
    "nl"
  end
  language "pl" do
    sha256 "117a2b551d195db6556ed2c6cca6f78e698b5bbfbf5547d84f3d0ad0680536ec"
    "pl"
  end
  language "pt-BR" do
    sha256 "482684362250f6e99a57e0c4f282f6042216657ef58087746fea192b85ac9c8b"
    "pt-BR"
  end
  language "pt" do
    sha256 "1ead3827f68ddf8ffe2914015f6c918f02ab0b161340bfcb3c806889f116e4f6"
    "pt-PT"
  end
  language "ru" do
    sha256 "13488f5dc81af28ba382f5da107278f229cb51472fdc6bcf8716be87843597f9"
    "ru"
  end
  language "uk" do
    sha256 "1642d97335ba8aaa18bf0f09b56ac05ae03a8bf7d00d65e988075fe8b22bfe0c"
    "uk"
  end
  language "zh-TW" do
    sha256 "c3b60cc4526ce3a818212f2f480ec8d011b8baa157db46a8b2a39c8a8b50a396"
    "zh-TW"
  end
  language "zh" do
    sha256 "661446666911263f0842ba47d3b65a9338d6ff48de75d59567f716f1a30d145d"
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
  depends_on macos: ">= :catalina"

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
