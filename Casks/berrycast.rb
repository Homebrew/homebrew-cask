cask "berrycast" do
  version "0.31.0"
  sha256 "7a1692a5bde3e3b93c2b169984d6c09c5b9bc4b54b212d966dfd957e0ed6f2aa"

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
