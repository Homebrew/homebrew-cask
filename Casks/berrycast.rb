cask "berrycast" do
  version "0.31.3"
  sha256 "cd95f2c84defd0067aacb56a4e4300ce310690d039728de39cb4622e983d9069"

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
