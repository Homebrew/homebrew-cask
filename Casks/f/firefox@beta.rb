cask "firefox@beta" do
  version "133.0b1"

  language "cs" do
    sha256 "6530b4b2501bb2eed8a7cdf70c7e1510405333ec549e96cf1aecf33a315266fa"
    "cs"
  end
  language "de" do
    sha256 "967f0cc1f1cbe07b61f5870d8c19a468aa681aa5ec14f4aa331dd54249802aaa"
    "de"
  end
  language "en-CA" do
    sha256 "5749523479ca357c16a8bd61595435dcf71a64747949742a54f54dc0f7956aa6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2591c1db15315365d7bf5b76d52adc6dd81dff2925aff18deb55283fa565857c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "999529fe32c8630c234b6cff09a204a1c178ca8fc1a4e17c66097b943a87ebc4"
    "en-US"
  end
  language "es-AR" do
    sha256 "b98db98f7c1b09e92eb4921dda42c61ac755fce4edfdf56eaa9c82edff9f036a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "862e67cbcdc5ab6ac6a7a50f243c4e69d53b7422fe52c0c6762449705b43a3df"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3d5bbb91eb84342e368e8376a90c8d3496c35e0058372f423102fbdc4cc7cecd"
    "es-ES"
  end
  language "fi" do
    sha256 "1a183103c5b01e0d90369fd8aeacbeda0da8cb68381fa6e6cc0abeca873927c7"
    "fi"
  end
  language "fr" do
    sha256 "40bc6c00540664150e1af84dfae06f120695eac1edc89500d80d9840233d1c27"
    "fr"
  end
  language "gl" do
    sha256 "b0f4559d16e98f71bddb0463e11e307b334d048306a4a54a84f90c96cf657810"
    "gl"
  end
  language "in" do
    sha256 "0156f0651c7ac3eafcc1a6d917f283e21921784ce938d9fb9f3f62b476661637"
    "hi-IN"
  end
  language "it" do
    sha256 "ef45406eb5f90db3fbbcea5a6ec0d4593ff5dc73013292f4aa15dd37687126d6"
    "it"
  end
  language "ja" do
    sha256 "fe2e2803146846e0d0c9376cb3327c996dab0328c743a8dac6a8eee5e1962d6a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7f68ce9f98f1bdabd170fb0427170d65bcbc5a3d2f3968e7cd7e8feff0369bd4"
    "nl"
  end
  language "pl" do
    sha256 "d3d116d2f6e0f22668ae614d400a2381205291c124586c9456a4c4b36d96ba63"
    "pl"
  end
  language "pt-BR" do
    sha256 "e690819b44f4cc1acb550b9efc32a0ae7e79a70fa2d8858e0799ae73cb426e11"
    "pt-BR"
  end
  language "pt" do
    sha256 "cb8ef018aabe2d398e1abdd1a8a60cc18c13792f08c5cd87695d13a3cca4713d"
    "pt-PT"
  end
  language "ru" do
    sha256 "95e23467a46119adf29f89a178fd1de1f2ae741fec9ebc262bc3e55466794351"
    "ru"
  end
  language "uk" do
    sha256 "00b33687c5065ec276759f9be3499965e4cc5f31a81282897effb359717d75bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "1015ec51b09e5df2bb9917011b33c333acad1a6c5da3a4c3d5a2c918f72b54a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "c85fc9cbc1dc22b109f6118b87566b33806c1a0edf13a5dd1b11d3b7f092a5e9"
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
