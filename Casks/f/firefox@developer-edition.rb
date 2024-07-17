cask "firefox@developer-edition" do
  version "129.0b5"

  language "ca" do
    sha256 "2cd2543b98ea88d02765360d3c84d6d7411550ba45c0f37c1c6267f6de72fd97"
    "ca"
  end
  language "cs" do
    sha256 "2199fd0cf1a3ffec85ecb71901e58403e71582aa1c40b0aea6ca63a3c1c4b02b"
    "cs"
  end
  language "de" do
    sha256 "7155dd5687f5704c65fe26c145fe5b8125a1c9f4a479b4576a76940d4d3525ff"
    "de"
  end
  language "en-CA" do
    sha256 "69c4b40ca5db20f731ccf2a1ede712e14e2ea142b6ab9801e6190a12445c9094"
    "en-CA"
  end
  language "en-GB" do
    sha256 "43f85b5d9ab063e98c73cb2643507afa770b145bf78289aa5c20fd0f25823784"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f9a8f175cc0b905e98e9adfbbfe40842a91cf1b34df32ce918c8b535c08adfba"
    "en-US"
  end
  language "es" do
    sha256 "801e37c728baef3842c7215ee16ea96c8ae0daed1514a5bb72fc50ceec88ad64"
    "es-ES"
  end
  language "fr" do
    sha256 "5f63ee7b9aa506c1633a9d8412afc6e5b46e20fc54ba4d88d1239d43c2c477f8"
    "fr"
  end
  language "it" do
    sha256 "d98d6776ec0c0ba997fc157ea9a02b475e6179c7ef5a42dc3a3312856e824c28"
    "it"
  end
  language "nl" do
    sha256 "20ae2daacec334e056fe4d81fd99409aa6cc4c5a80d2106b5d5b86ca2be16c5c"
    "nl"
  end
  language "ja" do
    sha256 "a0dd7581682f9c44160d04093e92c1359d9e98187f6c8de29ea8fb29f74ba087"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "c2acbfb5b509df74ddf2dac7ced3c5812da3ae4e151228742bc3451a74def8e7"
    "pt-BR"
  end
  language "ko" do
    sha256 "41bd84de4bb11c5b57a396b1ae91be67631375af0073408c57b47af0c9f88d0d"
    "ko"
  end
  language "ru" do
    sha256 "74393128249bde20e16dbe38b1069bd4abe28e39af8f465ced3f9b818e72abe2"
    "ru"
  end
  language "uk" do
    sha256 "89d208dd9d414e1292e5b83634b54b9095b074968918de570286ce9901fe3a4f"
    "uk"
  end
  language "zh-TW" do
    sha256 "02ff7940fb2094463e6226f0dd284599989656018874eca0cb9cb0b27d94c939"
    "zh-TW"
  end
  language "zh" do
    sha256 "390c6f7114635945524bc1a7dc706f9d8fdfea9b61f3746207b7ad2c5945f4d3"
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
