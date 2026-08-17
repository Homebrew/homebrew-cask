cask "firefox@beta" do
  version "155.0b1"

  language "cs" do
    sha256 "b42f643cd63119842515be4c455968d8878dcaf4faa195ac3f81c6d36fdc6516"
    "cs"
  end
  language "de" do
    sha256 "2700b0f0989eb02e45af60c18a9ea8e123f9e4f34ae2a1b70c1ff3553d1a4f54"
    "de"
  end
  language "en-CA" do
    sha256 "a16e72257e5d557b665c285f2b532c97708d79bd038a5a814c6b0214c5a5bf36"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f7bc763422c044561b028841c016dc5dfe7d8cc5c96b4685457907c3b85be6be"
    "en-GB"
  end
  language "en", default: true do
    sha256 "df7de0d41dc0fe4b8920bfa9a098466eb27305aff844af44da0b45d08f4a6f8a"
    "en-US"
  end
  language "es-AR" do
    sha256 "a181fd30dfd2ab395c162be917660d35175bc28ac9c80edfb6f6de68634a11f7"
    "es-AR"
  end
  language "es-CL" do
    sha256 "23c9544acb7c1ab6e8389ac52944194695ca7df2fb7483ecc99e8a5edd933891"
    "es-CL"
  end
  language "es-ES" do
    sha256 "d401d8241f954d9570056b80e23937fe09f270f507150c79ca37dc72c6e2cc4b"
    "es-ES"
  end
  language "fi" do
    sha256 "54c9ddfd309429b18e4e13a56f189735d0f699c79b373fd2e785d447fdfd5644"
    "fi"
  end
  language "fr" do
    sha256 "3678f429dcc332c6c1e72f721c79d54f8713b60162f09f56a1c39002a775862f"
    "fr"
  end
  language "gl" do
    sha256 "e846eb74ba6e902a3b76f944f3fc1a6d7cb2ff6a6b20320d8f8acdbe72af8501"
    "gl"
  end
  language "in" do
    sha256 "9e40c700b59068e4334f0f00f7fc9998332efa4a09890c42ae09b641853472ed"
    "hi-IN"
  end
  language "it" do
    sha256 "f006bcde0471f0160b85155ecf2e3499cf5d21e027ab8a6f442399ea13c8ca5d"
    "it"
  end
  language "ja" do
    sha256 "80df6dccb4f19ea720c256c729d4066db8de417f3c4e331b7ab7f50896b736e1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "da551eda3385393a2418e83478084a6a151e5451e84a8b1440ee5a481c8827b8"
    "nl"
  end
  language "pl" do
    sha256 "857221da2f6fb336859cd3688de21fd9053ff65b3b5f9812052c85e652c65661"
    "pl"
  end
  language "pt-BR" do
    sha256 "c5f83a109fab765e790687c0b2013e5fa79e4797b0fca063df263c43452a611b"
    "pt-BR"
  end
  language "pt" do
    sha256 "6592e88f0aa25f49879e0da61b6bef31e372b6ea82c32d86901ee60b84cb46f5"
    "pt-PT"
  end
  language "ru" do
    sha256 "01b128020dd9f79d7a5c4bd7cda5f01f0aa95bb20702b6028f2106f7931f1049"
    "ru"
  end
  language "uk" do
    sha256 "11c2c16a4e92cc32b6053d75c5a58a5c015db3d6ddfa0fa50e36fe68034a7c0c"
    "uk"
  end
  language "zh-TW" do
    sha256 "79d98a29b45746698e9550e686b0e0e453b1ef0702c991b0a25d02d850a0153c"
    "zh-TW"
  end
  language "zh" do
    sha256 "832034ce1df3b948620135c2e5012b352f34c44df08749da1f35f6cc2551c2ea"
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
