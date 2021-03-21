cask "crunch" do
  version "4.0.0"
  sha256 "6969fcb91e5a93b9d9e604cca2e6a98b6ebdcc7dde0c53803c25d379d3e4e729"

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  name "Crunch"
  desc "Insane(ly slow but wicked good) PNG image optimization"
  homepage "https://github.com/chrissimpkins/Crunch"

  app "Crunch.app"

  zap trash: [
    "~/Library/Preferences/com.csimpkins.Crunch.plist",
    "~/Library/Saved Application State/com.csimpkins.Crunch.savedState",
  ]
end
