cask "firefox@developer-edition" do
  version "153.0b3"

  language "ca" do
    sha256 "773cb431cf6e79c2e1a7587998afe7ddfe656dd7c85d798f7978a38190a19be4"
    "ca"
  end
  language "cs" do
    sha256 "faec4dee6152b9cb4417e36cb854f7bac26c951fe7c27cc4a3bee7f0c950a004"
    "cs"
  end
  language "de" do
    sha256 "5ac3ef67356fc19a32494f1ec42be07d71ff197dc6e77992dfbd6d8d4ff5c5f3"
    "de"
  end
  language "en-CA" do
    sha256 "914adbaf781890435a70dfc66473f78d09ddd85b067c721b433a0bc0ee262402"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d7d6cd6da05631531103407c40092807e26f61451bf92868af56e768861eb25a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7d7dae22378cee5c760342d791dc11ad3d545603dfbe0dd449023b12c040c3a9"
    "en-US"
  end
  language "es" do
    sha256 "1e530f34b32e694269ec5126ee174f33f884d53ab8bfd514f7793c58f35fe58b"
    "es-ES"
  end
  language "fr" do
    sha256 "5e5fddcf6c45881647e9e09ac956650a128557b7ad5b7a8327f3cdfd87502c9e"
    "fr"
  end
  language "it" do
    sha256 "44087812694ef69f5f3e071bbe3be02548cd84e2d28f542239be4754934ebf37"
    "it"
  end
  language "ja" do
    sha256 "ba3cc9bae46216ad150830e341f063f20a5e58af25f8b8f61bc49efc006c4c17"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a2068b8390a02b6c1db539f32a86e03a568b25c03c896c41aaf63e955f8ee36e"
    "ko"
  end
  language "nl" do
    sha256 "a6c1bd79ee0f0b8a1a5ad8c4d36c97652f367569f355658e0c65e47489d8e5ca"
    "nl"
  end
  language "pt-BR" do
    sha256 "ebc658661ceecb76db62d4f7e4d45d5d3200ad8bd112e1ebea71be7a2bf8e047"
    "pt-BR"
  end
  language "ru" do
    sha256 "7f4e200b450eb2f49fc70102ef7e19d0468a15b90c97e0aa3f9d42b36d072131"
    "ru"
  end
  language "uk" do
    sha256 "f3a7ba8ce94177418a468c0964b28c4fccb9fa82e13139587d8e5e1059fe147e"
    "uk"
  end
  language "zh-TW" do
    sha256 "1801c3943af78429746376cf59001d26287f9d46d21a76560ae14314a6cac8a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b8c83d8f240df058503ff94ca5647bf7034d127b3306a8c8d7e11370b85b131"
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
