cask "bugdom" do
  version "1.3.4"
  sha256 "9797091290e29336e74f8d3692589acd5accc53bccf085e6aeb8636552349644"

  url "https://github.com/jorio/Bugdom/releases/download/#{version}/Bugdom-#{version}-mac.dmg",
      verified: "github.com/jorio/Bugdom/"
  name "Bugdom"
  desc "Bug-themed 3D action/adventure game from Pangea Software"
  homepage "https://jorio.itch.io/bugdom"

  app "Bugdom.app"
  artifact "Documentation", target: "~/Library/Application Support/Bugdom"

  zap trash: [
    "~/Library/Preferences/Bugdom",
    "~/Library/Saved Application State/io.jor.bugdom.savedState",
  ]
end
