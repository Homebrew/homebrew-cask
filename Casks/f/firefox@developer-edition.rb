cask "firefox@developer-edition" do
  version "153.0b10"

  language "ca" do
    sha256 "ff2ea5e7b6f91ed39eb246c00f13277beb961e113b6861e0f1033c0ac6e91015"
    "ca"
  end
  language "cs" do
    sha256 "d0536e3a0916fbe64b045b35f8337b123b9ca1963fd2f4f29f8885ec141c2cc8"
    "cs"
  end
  language "de" do
    sha256 "2bb69dc2d40846d4a1ac4ee9f3e519bc6890e30cd2b8aaf50ec2d9a31cb7df61"
    "de"
  end
  language "en-CA" do
    sha256 "5b9e99719906a1d8a889d97b44a9003ac192d7e668e7dedd70970401ec2fc943"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7e7752df3ff8f774a70e64cb55887b1a2875ae75968e34459cc5c40d9ad75705"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cd59083892e857a418be9c0fc8fa9b94348f1fbc107da4a699e57fa53eacc52f"
    "en-US"
  end
  language "es" do
    sha256 "da5a601c3e5b0b2c0accf8e35a7ff4ac6047e911b6ab2eb48502cc529596a524"
    "es-ES"
  end
  language "fr" do
    sha256 "6d55faa8465aded5b79249192dc4d19ba432e3403c259bd1a622012df6c9008d"
    "fr"
  end
  language "it" do
    sha256 "17f2b8dc1fa10e261af385662201327115490d480fbd7b6c0c2f9297cbc44e85"
    "it"
  end
  language "ja" do
    sha256 "de3084b95ea337d60067f991d56536a85b1615ac4ba5753f91e3993e33b1cf71"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "40a4d475c6a51361a3d5e5e7489f3feed389cc4945c71016ac0d1fe23ebf6574"
    "ko"
  end
  language "nl" do
    sha256 "1b6a4f5f947c571780c872884e52d0e85100ff3800d0780f772a4203a232c34a"
    "nl"
  end
  language "pt-BR" do
    sha256 "6101dda752cc4d53e64c88800a85b065105203871a9e55b4582b76b49e1e3aa8"
    "pt-BR"
  end
  language "ru" do
    sha256 "3e84172063d9fdc57802c6bb65e08bfa1737228f49cc481b70a09dcb5a1c78c8"
    "ru"
  end
  language "uk" do
    sha256 "6197cae4d02b34d7fb94901f4bfad6b3bd5a77792389fd5d944939d65ffa8ba8"
    "uk"
  end
  language "zh-TW" do
    sha256 "18b8192c4e547ed14aa4fe8092475c33e4a129f7c7ac3b3cf1f33fa54219eada"
    "zh-TW"
  end
  language "zh" do
    sha256 "42651322c40dbaa5519969b44ec9417d98fa19f2c33c978b423fbbf203be9239"
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
  depends_on :macos

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
