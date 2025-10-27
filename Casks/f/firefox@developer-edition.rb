cask "firefox@developer-edition" do
  version "145.0b7"

  language "ca" do
    sha256 "09dbb28c910fb90a00dff610a93cfce2be9a8f92ceaab72bc62ce315b9c4f614"
    "ca"
  end
  language "cs" do
    sha256 "d407c071e374cbed5dd984ab25d914e7845d6202250d58ffc0c57c65c99308c1"
    "cs"
  end
  language "de" do
    sha256 "8596376bcd4cd4bec128a007823ff56d959f95bae78db113e6ee6dcba1ee3a27"
    "de"
  end
  language "en-CA" do
    sha256 "07f4f2f8fb7304ea05012f99eba8dad7a81f3097bcdc68d8ebda904ea2d710b4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "349a2fd5f0f5cc7911312040da77d6d124e7fb8d420beabfad17551632754288"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5b8a8c08de8b6eebdc7ec5fd78ec155730115a052ef184879f868725e23fd793"
    "en-US"
  end
  language "es" do
    sha256 "d00297b7dfc404ad279828a0fae7ed9230c020e5e7037a9c2f47b8df8e06c146"
    "es-ES"
  end
  language "fr" do
    sha256 "c12667d5ac168d4d5254f193dcccd15a5ab07ff349220b3e47320e2b75fa7273"
    "fr"
  end
  language "it" do
    sha256 "a11e6aa962a427940494a5aad04096e0494bbe84d81174453011998facd1a345"
    "it"
  end
  language "ja" do
    sha256 "9f20a1a36eb5ef1adb626fbbe7f95787ab480d0c2ca302be6e51f74055dcac05"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "705a1c53d102e6b9e149ca403a125a69d2b874646fd95d6c08677043457d693c"
    "ko"
  end
  language "nl" do
    sha256 "4f1922b99b06b872395dc363011f26f2baaf696f5eff97a1d4390dcf6e1b931e"
    "nl"
  end
  language "pt-BR" do
    sha256 "d2dbf63dfcf08b243ffe8e7a2e1007c50ab2f6d6f69e514742bb5f3a8318dd6b"
    "pt-BR"
  end
  language "ru" do
    sha256 "210dcd25af26219a401ed20e97fc0696b71ed35eab138c62aea03db1435bf65c"
    "ru"
  end
  language "uk" do
    sha256 "fe5903f0ab7d745c47b721dec70614ddf0c45640a51a917292b0ef0f6f9cb2a2"
    "uk"
  end
  language "zh-TW" do
    sha256 "574663d09e06a86df15548f61dbee0359a03cd77791f0e673958164d76aece6f"
    "zh-TW"
  end
  language "zh" do
    sha256 "2f3aef099d8db287b4b96dc5aee7e46cf9c13a87bb169698df442d59105faf97"
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
