cask "berrycast" do
  version "0.30.0"
  sha256 "6fe0f1e637bb5ffc29c3826480341a40b42ab3c4c316ec3092e6f5f91ae93aaf"

  url "https://media.berrycast.app/desktop-installer/Berrycast-#{version}-latest.dmg?display-file-name=Berrycast-#{version}-latest_858b5929-15c3-5a2d-aac7-a8b168dddc50.dmg",
      verified: "media.berrycast.app"
  appcast "https://media.berrycast.app/desktop-installer/v2/latest-mac.yml"
  name "Berrycast"
  desc "Record screen"
  homepage "https://www.berrycast.com/"

  app "Berrycast.app"

  uninstall login_item: "Berrycast",
            quit:       [
              "com.openmindt.berrycast",
              "com.openmindt.berrycast.helper",
              "com.openmindt.berrycast.helper.GPU",
              "com.openmindt.berrycast.helper.Plugin",
              "com.openmindt.berrycast.helper.Renderer",
            ]

  zap trash: [
    "~/Library/Logs/Berrycast",
    "~/Library/Preferences/com.openmindt.berrycast.plist",
    "~/Library/Saved Application State/com.openmindt.berrycast.savedState",
  ]
end
