cask "firefox@developer-edition" do
  version "145.0b4"

  language "ca" do
    sha256 "f60de34ce2b6110afc011127a30700c6c5628e49f678b9a883f03c58e6d61a2f"
    "ca"
  end
  language "cs" do
    sha256 "b05fbe9f6a23655ed5da4a97fb1631d8b8914e820cf252ca6e4e82b30e01ca06"
    "cs"
  end
  language "de" do
    sha256 "a636cb97496afb3d67e5455a8d01d9ad810e0a4ce532a773f92a749acbe3a58f"
    "de"
  end
  language "en-CA" do
    sha256 "8d7d6646b7f452c38a817aa9c00c3fd0c128bf837272b9c19e64e283eb9e36b5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ba7d469a1bbb4e0435843a9979522484c01dec7a9ea5010b9b6b8b0982ea55d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4d92d008aad3140944d1a5dd23762ae79a22b23085022b945a26c44129903643"
    "en-US"
  end
  language "es" do
    sha256 "945f6942edb88c54f5a6de9b2d48d23a492d0b2424e38f6def125658d97d4461"
    "es-ES"
  end
  language "fr" do
    sha256 "58ba41848d97add9726d050f6ab9ceef3d3c6067bc1e90ba3d1fdadd4d5081ff"
    "fr"
  end
  language "it" do
    sha256 "15e7cd709ad3c616b3a9a80437abfaf194c0e675b5773ca507763c3eb8a9cc91"
    "it"
  end
  language "ja" do
    sha256 "3bb23c212ed132a9f9f92a40e296fd8d303ed8f9d6737aaf6a07d735b35bf5d9"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d5c0adf6da3a3e9b92d54738f977e6aed4c34c492e2b58de79a70c62eae9fe38"
    "ko"
  end
  language "nl" do
    sha256 "0aad824ceb11311d08b776e8dd416268e18bb0dab7d30f6b9ed0f09db3ed252f"
    "nl"
  end
  language "pt-BR" do
    sha256 "b581587f971f7644e35c910a26d8ae9b443c5330a0ec9ccc49480a2360fab62e"
    "pt-BR"
  end
  language "ru" do
    sha256 "248da2e36c6701b0858f591671c99cb610f04890dd79046478dba54b04a21140"
    "ru"
  end
  language "uk" do
    sha256 "94791bb318ce8f082384d00c46229f7eec209be298c72832a8692c07584a3508"
    "uk"
  end
  language "zh-TW" do
    sha256 "a5c0835ff59470a539a2b383c9e70faf30bb3895445fb6d007e657c90c5c8f5b"
    "zh-TW"
  end
  language "zh" do
    sha256 "5f2e31e8e818643ac3eceaf4aed64e0ec40487ce83ef6e06cfc2ae92886befc0"
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
