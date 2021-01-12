cask "berrycast" do
  version "0.31.1"
  sha256 "43c5ee18b2a1a39f851a7f2d6729e61ae8cd723754b706e1f41730e96f539c85"

  url "https://media.berrycast.app/desktop-installer/Berrycast-#{version}-latest.dmg",
      verified: "media.berrycast.app/"
  appcast "https://media.berrycast.app/desktop-installer/v2/latest-mac.yml"
  name "Berrycast"
  desc "Screen recorder"
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
