cask "thunderbird@beta" do
  version "142.0b3"

  language "cs" do
    sha256 "43cfb54f92851d09de0a1f77f3799a3c06e7a0e69e44a8b551968298906306fc"
    "cs"
  end
  language "de" do
    sha256 "645fece94151e7c78a624ca0602ab916b20bc4cb77ceddd4a6f9d6b228e372c0"
    "de"
  end
  language "en-GB" do
    sha256 "8985dccb7c92f41821e9b2c7738509065d1b3928989d3b25f72cf007b54c5e4f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "458627b8756715444dddab3865730558ff07db92f06b4c96e874b535619cc57a"
    "en-US"
  end
  language "fr" do
    sha256 "c240ea2254b2f9d37d9ed0dd4b6173b065682a52073c5bcb86efbf1a385e0fee"
    "fr"
  end
  language "gl" do
    sha256 "ba5633130fe526dba0ce4a1004777ac1fac9c6be230072618ae840b3186b0a95"
    "gl"
  end
  language "it" do
    sha256 "99025c8976b7db7900cbd4204947872936c4e1636332437bb2e715fb62682a85"
    "it"
  end
  language "ja" do
    sha256 "caeb08b7ea73667947abbccbb7325f21fdb9564234b307226b3c9b1535b62382"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "82d6c8d9da8fe158e796f7704836942d39e85e8438b956271eebfad4d701e801"
    "nl"
  end
  language "pl" do
    sha256 "5889ad7527b2314f2b545c921305eb622ff4dc7fb3acbd12c6254f150c04611d"
    "pl"
  end
  language "pt" do
    sha256 "91cea34e538d75a9eb3b7cb6899067af25b83703bb85c555860710354025413a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fa8284032b84d0d60a5a83b345eac18062bda69d04d6eb8b09f4fd99341d8d81"
    "pt-BR"
  end
  language "ru" do
    sha256 "2b3eb034d76e48f7689054612ad552aae6a057324f98974c87129cc3d0c159c0"
    "ru"
  end
  language "uk" do
    sha256 "04fa368879995b1e4a27884bb2af6dd738b3675a9b90fa844a826b2becb304b1"
    "uk"
  end
  language "zh-TW" do
    sha256 "d4b18dc092d0c66f6e2c3aa15e6914f6aa9cf35e6e12fcd4a0093b08df200c6d"
    "zh-TW"
  end
  language "zh" do
    sha256 "75e128e4bbdc8bd56d787768c5939c1d5874426d3c89d813ff1b75de29d314ce"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
