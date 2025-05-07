cask "firefox@beta" do
  version "139.0b5"

  language "cs" do
    sha256 "7f7b502e1281a4e05638f5a2a369503d3583467ac319ac268fea9f9558a97824"
    "cs"
  end
  language "de" do
    sha256 "fd2c77d7fb209e1b531dbf79034d597304106277ea0d75f717ea4f4f0c2f6619"
    "de"
  end
  language "en-CA" do
    sha256 "ddddc0b8b738d357c135ab1d4760651848f32b9f9e4c3b01eb4a600da916e3c4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5a63783791157e495b5b7e4d189d589ad5d0ee1943e5a028971eba96b2fa8739"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c0c4cb22c32298f4d3199162326937a13700a9330b8f9840bf21ada5fcc41638"
    "en-US"
  end
  language "es-AR" do
    sha256 "5e607dd2c4fb86c68ec8181dc7e78a5b2286d729386131fc207d3deee7672644"
    "es-AR"
  end
  language "es-CL" do
    sha256 "dbd82f60e03683e4f433de3d795d32042628dfa9659e5c6708968e09ab897ae1"
    "es-CL"
  end
  language "es-ES" do
    sha256 "a8141be0d78d4c88894b7dc7d2a4c27bce6f61934c3a64a3b79f23408ac49144"
    "es-ES"
  end
  language "fi" do
    sha256 "0fd3181527025b8ecb72fc26a2811fa5d1af44c6f287740156abf786d0137aed"
    "fi"
  end
  language "fr" do
    sha256 "c468d47eed5f625b183fd3bbe90f6d2dfcd52fc69ccb3cc3104c214af841e44c"
    "fr"
  end
  language "gl" do
    sha256 "a17515561fb1881309bbc4f2da3addb3380b3d66d234f25feeaec05f7d511244"
    "gl"
  end
  language "in" do
    sha256 "bed8d86b3a828d24deea62195f8dfd4e23e70f570cc6e7e9f91f9e4f9b49a5fe"
    "hi-IN"
  end
  language "it" do
    sha256 "835c13bc11cf4e4a2cfd93c827adc45d752ef76fbbafcde7f58cd4f52f850b4e"
    "it"
  end
  language "ja" do
    sha256 "1d8883d49f822b54843afe150b63ce88a321ab1d8e86245d1d43a2d1341df06a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b1fdbce136341cc6e5f3c485c59b3a2e5b1b54917525af139728c14296410b37"
    "nl"
  end
  language "pl" do
    sha256 "37e3b6d107927da5000bfeef75cc9c9c2debac43468c029162c205f5985de5fb"
    "pl"
  end
  language "pt-BR" do
    sha256 "ada954b7466fba9665ae1977d81be6a510d8c136a4f935f85c56bda98f728d05"
    "pt-BR"
  end
  language "pt" do
    sha256 "6adebeb7f6048a5cd94adf71b3cb619548d7bd3e05932f88b8e2f37963cf7292"
    "pt-PT"
  end
  language "ru" do
    sha256 "474292b64253e06219680195194c004b25788292629306ec49d5f3efcd2796a0"
    "ru"
  end
  language "uk" do
    sha256 "b30d0af5025ace964d419d878866671b3d3b28a11f99c3c407f60a3b78e4198d"
    "uk"
  end
  language "zh-TW" do
    sha256 "fff71246b36f4f274df70b457e9842446793c927a31342c1adc1a1cdf4cce057"
    "zh-TW"
  end
  language "zh" do
    sha256 "0158018be67b43ba8fa752a467c2f9c1e42c280103d7522b62e41995a0f2b2d6"
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
  depends_on macos: ">= :catalina"

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
