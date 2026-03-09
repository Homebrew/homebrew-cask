cask "firefox@developer-edition" do
  version "149.0b6"

  language "ca" do
    sha256 "3285b781bc88fdf4f523a56a8d2c6597d11c2693b6093193201fcb7d68074be9"
    "ca"
  end
  language "cs" do
    sha256 "5028e33ca472c345b04204874aa7c1107f6a87be15a75478fd7cd306e81193cc"
    "cs"
  end
  language "de" do
    sha256 "e738c2ac494a8bd8feab9eb7dc7e341c0ffd4ccd806947e54391255fdbb2210f"
    "de"
  end
  language "en-CA" do
    sha256 "a9a504c5efc8af511c85e214161cc091cb9975f91bff545813962c8fbb24c66f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "918780379e90ce7dd8bef857178770973e6f6b3248d5c815cd0b635bc25bd7ef"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5d5957d920042de0792c1162c2f1501f3499a64aaa638bad53143da9f31a8997"
    "en-US"
  end
  language "es" do
    sha256 "ed4510d255c8189305e6eb91027765ca70f926a9e5b9852005b35138b49d30f9"
    "es-ES"
  end
  language "fr" do
    sha256 "4ad200254edba31b762d788d15caa1fcf9c08e4b0957e9923ba95c7e897832de"
    "fr"
  end
  language "it" do
    sha256 "9476d93c038f7e78b443824c49a24252dc923f091340719640d1ca0500b46066"
    "it"
  end
  language "ja" do
    sha256 "ba8354bdadd12ff69ba20e37d1ea7b3481825b804a8a775b41ebea5ea27a60fb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e68b03a3b6b551dd6d57c13774dde173ee3884e57d8d1d48230337458369e997"
    "ko"
  end
  language "nl" do
    sha256 "480eadce543850f0cc46934f72c15ade5d960c7d7536bf2dee0e22a1f8306ffb"
    "nl"
  end
  language "pt-BR" do
    sha256 "3702a0c4316b82c6c5e59b51189d88148865a2921a6fa012914d19008bbd2aeb"
    "pt-BR"
  end
  language "ru" do
    sha256 "8dd6ddbc3e7bed13459d17fc2f1e0ebc05a16836203d623970dc2549550b43ff"
    "ru"
  end
  language "uk" do
    sha256 "ca2f30fb3fba08ae940cccf2dac35c615bdf5abbf9a7ab2ee9171e80765053a4"
    "uk"
  end
  language "zh-TW" do
    sha256 "bab604b784904347851da111bae6144f09606d78c5a6fc3c2bf36a5440e6f360"
    "zh-TW"
  end
  language "zh" do
    sha256 "3de1c8bec51c47e4a128d848bff30c86224a6eed77ff15e65ab90294abfa1889"
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
