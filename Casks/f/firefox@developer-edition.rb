cask "firefox@developer-edition" do
  version "131.0b8"

  language "ca" do
    sha256 "c2e5664667d914140143ef861c8e7bbc300461720c7003c69a05f5e7dae25f6c"
    "ca"
  end
  language "cs" do
    sha256 "de97e2ecf3d2d8342bb6c952d74f5a0fda42e206ad34248bc91adbd2ebc1abe1"
    "cs"
  end
  language "de" do
    sha256 "a2c0a4aeea8f99e7d91208a77bbd1f3c60a80fec8d399fd24d17801b363f29d1"
    "de"
  end
  language "en-CA" do
    sha256 "6d5edda1345f471a33bb84bf70948c5282b50fac3afb864117fc15857cd4329f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "30d7647d9bff1b6b763f10292713cc0e773a9468c2c1a027246bd115eab8d567"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4df6185bc5046e4fdbf8bd58fc2f4885c5a142b39321029c0fb36b1533ea7175"
    "en-US"
  end
  language "es" do
    sha256 "3e434e5aff57a35604f746c34e43522107aa781430ed89b22d03d0b9a1b5449b"
    "es-ES"
  end
  language "fr" do
    sha256 "a94ba6d1b562867ae8826f77a6b321edaa7fcacdd0a29a2cfa2db979b63c7655"
    "fr"
  end
  language "it" do
    sha256 "da493deee4503afee14e94f6c94cd806ce954334c62f86d59ffb5fa14a9e6cdd"
    "it"
  end
  language "nl" do
    sha256 "4170f5c98fbb5d4022baadbc960101ab7a0e81a9be844049d9ee30dbbd360411"
    "nl"
  end
  language "ja" do
    sha256 "d18a53970772fb9737382d0a80cb7e93ae0b22f3612f64709227a0c30934f585"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "f02969f39459ec9a4edc1f30bd576dc45390b719ec659fc3c2b6c844cd0f7255"
    "pt-BR"
  end
  language "ko" do
    sha256 "9e6ca91f9c3f43cb1cc0a715a8bad13ea993b5615f47d43baed5bb6839fa5a72"
    "ko"
  end
  language "ru" do
    sha256 "436c12c0dd78113a866d82ba1a3fa356997782532534acbd8a958e2d47fc2222"
    "ru"
  end
  language "uk" do
    sha256 "32f47405928410b0ef8e8bbf8018bbd620ede92d983db5c5b4a320a42e73e14c"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a3910065561b2a011da45a9d5e34644a21e507fab90ce66d3eb6fa1259a7585"
    "zh-TW"
  end
  language "zh" do
    sha256 "4b999d845eaa2faca5abdaa8d9df31dd23b56c67ce870133580f44c0c3d06477"
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
