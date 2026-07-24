cask "firefox@developer-edition" do
  version "154.0b2"

  language "ca" do
    sha256 "f21b3d61a887221097dcda8486b72619c5a8f117a9fbfb6ef3b41d50e244fc57"
    "ca"
  end
  language "cs" do
    sha256 "059205b1c31ea3e47c6a01466ce38590130a19f841af2a7fd50514b3fa3f1f3a"
    "cs"
  end
  language "de" do
    sha256 "4a4b36cf97a0eb567ba4ed527a01c0f0b1ba64279e4b0e05fffa118d63e75851"
    "de"
  end
  language "en-CA" do
    sha256 "a65721890502b096662815e35dd427105f8e2641e60bfe1f14996087e99c43a8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8d43b70047545abc6640c85226902d448d17bb0f264e58c5fb54dbf679e0ed38"
    "en-GB"
  end
  language "en", default: true do
    sha256 "38c58ba59dc8cbebb0c4a3aaace8c34bd34bdfce2d2bf251d83e15f324fd3be0"
    "en-US"
  end
  language "es" do
    sha256 "ee3b9c7a8bb7d1a3dcdd4f69d1ec1bb4e285465a99531866a05719d5de7e97f3"
    "es-ES"
  end
  language "fr" do
    sha256 "b0c61a0b434a1c7a56252cf2f74f28fbcf46ed13219e0fe07b0fd07704348772"
    "fr"
  end
  language "it" do
    sha256 "c0e55a30b82dda25f032c8a791c86a88133f49bf7f5ca56509d8c6fe3134db08"
    "it"
  end
  language "ja" do
    sha256 "d39da3064c02eb9ba3d9ea8c4be847517c4d2a856d731015000ba376f48c1871"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "feb17782e2e7f6400bf329be7a04bbc2fb421cdb2ce45bbf7373d3574844d66c"
    "ko"
  end
  language "nl" do
    sha256 "b8ccce970a530d9164c482b177dc0b44f72a3a49398ce3a8a5877c3aa4137811"
    "nl"
  end
  language "pt-BR" do
    sha256 "d151932f9f235906018b27a6f03a3ea1563c67941c92c94986bb70d749881435"
    "pt-BR"
  end
  language "ru" do
    sha256 "b710c9a940c76650bfae159a114c360c555a4a245bb7f7aa809ff4cae574057d"
    "ru"
  end
  language "uk" do
    sha256 "b610c20f01763b01b93acf312247969ee05504a669e9acbf9e623106ed47c996"
    "uk"
  end
  language "zh-TW" do
    sha256 "ee9f880bc48427dfed4ad290ccb5a44ce62aede9c3bc4071a8312e6c255cac56"
    "zh-TW"
  end
  language "zh" do
    sha256 "62fcf2e0692e6fb6b2da25ac51cf0d8962917d43972075f652fd408a36742501"
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
