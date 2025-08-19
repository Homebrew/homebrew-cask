cask "firefox@developer-edition" do
  version "143.0b1"

  language "ca" do
    sha256 "9217f04dd0ce8575c3b132e7d7920b78ceac47414f2cd31a9a01c37ac02f4d56"
    "ca"
  end
  language "cs" do
    sha256 "b5f82a92921241eedea385ad1f85b00a542602e2ec1816908e1b77b96495502e"
    "cs"
  end
  language "de" do
    sha256 "9fda0d94e5474dcb7be6d3d6c85a7b46fd1416aba198be80e0ac4992d6e3e5a5"
    "de"
  end
  language "en-CA" do
    sha256 "47a57542c6d81d67e8292c02b1db3368573b494758b06fd1a2de2a875563614d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "45019b1fc43250a625b456abc71acdb51b4fbcfbffa68cb2cee261c4d14ef287"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0a138f32038724ab3e5a14d5211af41f5b282ab2ae590765c32824edcc51f60f"
    "en-US"
  end
  language "es" do
    sha256 "0aa2ec144e0e0c84bb9808048c68881a3407f56985a5a69c8386d2be570d2a13"
    "es-ES"
  end
  language "fr" do
    sha256 "dafd429f7d312be4b7b7f5e57f63117c984573cd5259d2e9b545f7c97a1f792d"
    "fr"
  end
  language "it" do
    sha256 "6fb03035ea444ca0a51701aff066a71c590d06c9a1bb367bc118650cad31e04c"
    "it"
  end
  language "ja" do
    sha256 "1c265d5470a741dc2e64a24f65a7f6f64d9a7dd230ec6f16215e0451d9c250c8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "eff10ea1740caeab5b632244357f4f844dcd26c178cb5fea366c9e070c601a3a"
    "ko"
  end
  language "nl" do
    sha256 "4ced0a720371a85d7892f20664a5c9d81027ec5214965329dc7e09f84d29d5cd"
    "nl"
  end
  language "pt-BR" do
    sha256 "a6b5340992612663b0ced17bf551f8037adf9de10421a83b673aff11d1730343"
    "pt-BR"
  end
  language "ru" do
    sha256 "9938b9e79a91f115a9be3db8903eae0e90c3126385a7253c7a05e5cc9b56f6a6"
    "ru"
  end
  language "uk" do
    sha256 "26f82fb70c386d43256afd87828cacd3f56b6cbff5e1e01653bdfa3b4b1dc26c"
    "uk"
  end
  language "zh-TW" do
    sha256 "15f8dae5ddede04205ce7c9e0154d2c79e927a8ad7e3746d8f79fa1557d54f8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "7dd4f262388be05abcd2a438f1325b40a59b928d3c89eb2fe4b1c88039c978b8"
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
