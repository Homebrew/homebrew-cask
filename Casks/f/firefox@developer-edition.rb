cask "firefox@developer-edition" do
  version "144.0b3"

  language "ca" do
    sha256 "736a3159ca1c6450ba0e5fe902ae414f5a0efb1bcc6eb8a4124353baf90ee7db"
    "ca"
  end
  language "cs" do
    sha256 "bd952f9798226c34a89e0c6dc90b2314e376c571680ed5eb1407479e0cfc9409"
    "cs"
  end
  language "de" do
    sha256 "3355f70ea4dd4459ff3e0413799d78e253e831e95e8395c834f839ce067151f4"
    "de"
  end
  language "en-CA" do
    sha256 "02f36c20c507608c0cbc502ddf2180a48a914fafbf12623265cf57a4dc2f53eb"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c7112a39c9e659b8052019dea4d39a2171d67d8afc6c3462cc34e34763168138"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dcb936c81b3d4762689050782b990e691cb09e4cedfcc1a14ff82f1878b98e36"
    "en-US"
  end
  language "es" do
    sha256 "c834299bce65afedc7bb8e30c6273b42d9841dd72ab2988a1aac13c69a60b5df"
    "es-ES"
  end
  language "fr" do
    sha256 "785c0294b8f5089eeca2ae5e2c4d17161b5adc128d0dda69d5210d77e8a9d5b3"
    "fr"
  end
  language "it" do
    sha256 "b2f011785638cab0150e4fcd07afca0614c888ca0514c05beaa4f8c557f60bdd"
    "it"
  end
  language "ja" do
    sha256 "2e0bd8740a606411b63aede23360b3cb73ed200bc3b5bb52746ed4749591ef0b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c012dd98bd44d8a6c619bb6a5a137b4fd13290c54bdd404dedb540f007b57edf"
    "ko"
  end
  language "nl" do
    sha256 "3dd3df18f6c86e4f6997074ed83f38c7df5746f74c4a3624bb2271e3bcc27c20"
    "nl"
  end
  language "pt-BR" do
    sha256 "49ffbf97316f2c2c7dfc0883dcca772d7b206baa447ccdd555a73b027668d3ae"
    "pt-BR"
  end
  language "ru" do
    sha256 "4651fc7bc9985e457c932833e77169227f657519898aa445c1492ed838ea8251"
    "ru"
  end
  language "uk" do
    sha256 "58453a63968bdc6f92a34e664c5c9537b6c7643cf808de5f94685480da81f464"
    "uk"
  end
  language "zh-TW" do
    sha256 "c16fd50470f02314d3191b03587bc8bea8803630a34ce7fa962d364180132709"
    "zh-TW"
  end
  language "zh" do
    sha256 "cc452ed48d87224b670303906f6ffbac862af8f024fc585dbef4dfd9c6ca05fe"
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
