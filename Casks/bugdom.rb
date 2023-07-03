cask "bugdom" do
  version "1.3.3"
  sha256 "a0b1098dd322c8d672a8bcf85204a6d6c284db149e85b37e4ff8cb03923c6b8c"

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
