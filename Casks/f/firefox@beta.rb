cask "firefox@beta" do
  version "140.0b9"

  language "cs" do
    sha256 "818544c8b4cf8aee7935e29a815f8492759d144a8afd8ade8e1dc8c6252dfbbf"
    "cs"
  end
  language "de" do
    sha256 "d91c81899c50fbcecb117e57e55ed59d54f3947a13e7590ae02f8adb015dff48"
    "de"
  end
  language "en-CA" do
    sha256 "8ac93925961e52d94ea934935bba8745c271a9f24aca5f1270445d5b38c6d4f6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0daac11b39279a14a3ec6b04c7484330edc24aaea89e4cb6d9b92d188710ef1c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7c764a8210fe44797ba49982bede4d32235b33c7c996f4caffd15e5a06cf62a1"
    "en-US"
  end
  language "es-AR" do
    sha256 "fa6730c76aaf241f3e1d6aa2d08a06c864495f2809d7d88ee3ec8a06951bc181"
    "es-AR"
  end
  language "es-CL" do
    sha256 "6dd32a4dcbb69b1b514948ac225016a7910dd763b9061b95b1fe4ec29a4fdeae"
    "es-CL"
  end
  language "es-ES" do
    sha256 "8c9461cfdeb9ad1c6dffcbd3e888adb428f9d4d8703661abcdba8fd451d8bb46"
    "es-ES"
  end
  language "fi" do
    sha256 "d8c3cba4e2d603b898a96c275a4d7702ee4e30fedcb26849fc7e9b24a9456da5"
    "fi"
  end
  language "fr" do
    sha256 "7802fdeda6102c2866caa750f14a7e066cfbdd0a9746d006c441834cdc43d7c1"
    "fr"
  end
  language "gl" do
    sha256 "f17c6bd43dff3baf3b5375b25394129ca3a0a9e069e1ae044d7ce82dd6074ad5"
    "gl"
  end
  language "in" do
    sha256 "26acc407ef368b2be96156167177d303ce589c7867be3d10886156bef35e1f6f"
    "hi-IN"
  end
  language "it" do
    sha256 "675ec7bff34f12f0255f860ef4a81e5cf130530ab69c8dd623d1fc00ae8cc566"
    "it"
  end
  language "ja" do
    sha256 "77e036f86636d83c22c2732c0dc5cb0d942435421c3d328b11f7f816c7a111f0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dc3a63f91cbf5fdfdb429c9da2cd62adb45fdfaaba982db08bd44dafc828e2bc"
    "nl"
  end
  language "pl" do
    sha256 "b06b4bd714815eaae8215e8e47b5fdc6242081e1d7b47d609d7ed5732472e6d3"
    "pl"
  end
  language "pt-BR" do
    sha256 "6b0c7b99dcc59e94e3fe6db62ef5db430e25b1be4e4175a054e5c2cd4e6c03f0"
    "pt-BR"
  end
  language "pt" do
    sha256 "5ab2bbb23aa4ed161193d11df8ee4adaa15b313582a7de3f791922e8cbffda71"
    "pt-PT"
  end
  language "ru" do
    sha256 "80437877da578d8f5cdc34f8aa74bf28d16e775786826ee3f6c56c3339bd7541"
    "ru"
  end
  language "uk" do
    sha256 "48f7b7799a6ee94ffb4953fab1c9d8f5f00abd110750705e550ae82ecb19d8ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "b5bcbf3a63b6e4035f884ad4924a3d378e832bfbaba187e02bd228ddf917f264"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ed1cc3e6d2ae73cc63f405aa214034cd6dd45d6a7a74f26c9ab7d559b6ff55b"
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
