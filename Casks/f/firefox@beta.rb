cask "firefox@beta" do
  version "133.0b4"

  language "cs" do
    sha256 "2b3650953fb04adaa40f02d8369f7a6e65f175e1a846247c5f9939c6532a897a"
    "cs"
  end
  language "de" do
    sha256 "54458244486a0bcdba7656e6c1c6ba950f1ef5b178829b3e4fe666583d402017"
    "de"
  end
  language "en-CA" do
    sha256 "bcfec9978f4678498a12b1642bc6b727c96dc184e39cd14e082de6930f3cee1e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1ec0ca08b111c56c8fd880f350a822124eb5ed50ae2bababf11dd77bb6ff1dee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eeabda35d0843042953f3594ca24ed63a7b172fb9f6688208bdfc96f444eedd8"
    "en-US"
  end
  language "es-AR" do
    sha256 "ec94c7c0556d0f3d4d1341d0a298874ffe7e72fc3b4803da4049989184d1cce9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7bddca20edb51ca027662abd4108fa4d276df5b520cc115643eaaa2ace780ff8"
    "es-CL"
  end
  language "es-ES" do
    sha256 "1da3eaf69e38b533d0d8663f16b031d821990ca5a584b0fce59d85f35fec5971"
    "es-ES"
  end
  language "fi" do
    sha256 "27bf83746ea35ea7057aff78f33285106e95f6b8ffaa9bd673105e13e3271f40"
    "fi"
  end
  language "fr" do
    sha256 "9fc0b96fb84d610989f1e8b55b16286bca8c541778c82a5b5056709e4e695949"
    "fr"
  end
  language "gl" do
    sha256 "1134863f904356985c8371383172c846ebe357eda02ec6a499def47088ed75ad"
    "gl"
  end
  language "in" do
    sha256 "b6eb0b593659a059a0ccd4eb9b38dfe18af8000033bcdef777ca4403ed88e3a4"
    "hi-IN"
  end
  language "it" do
    sha256 "0366d11561217b89e69b6831b7d2d4dcdf3d627807203a651106c6f6441f8fe8"
    "it"
  end
  language "ja" do
    sha256 "5bcbb5a0a4e78db3a38fa33d53446580ee60134363aab23b168a858a810f14a4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3161c2de475f4d881df138b11128739c7d576b795d19c33996d0f36b67cf2671"
    "nl"
  end
  language "pl" do
    sha256 "8d92ed8d50070c650b0b1d28ec15b77f4b00aa84f677445e91677ac7863c86be"
    "pl"
  end
  language "pt-BR" do
    sha256 "4a6c04be96c143f707791f0bc27643d40938b97a4c2b1ddcd30bc98c7f6f21ec"
    "pt-BR"
  end
  language "pt" do
    sha256 "3fdd0677cc923b7cc843e7c2b36c535551d4fed52d15babaa9e4b7d286ccfa27"
    "pt-PT"
  end
  language "ru" do
    sha256 "b5d8c9618319f0f4ea071cc8a8880f0beef143fad84bf7a54f145beae8db093e"
    "ru"
  end
  language "uk" do
    sha256 "b7d5cc158c56c7e3772611070b60b622f83d09caf18f3639b826e2260844dfc0"
    "uk"
  end
  language "zh-TW" do
    sha256 "c8c922d93499e9675571fb1e9bcb2decc556e3445c47a713da7eed74ca64a3e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "ab16e4db58ea365a69084f235eb54f95eb3ed114ba54073bb589edce8235d9bd"
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
