cask "jetbrains-toolbox" do
  version "1.18.7609"
  sha256 "fdf54feeda18f401f0b33054880e1998c0c9d1e0e7023d0b2c8350b1969a627e"

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox/app/"

  auto_updates true

  app "JetBrains Toolbox.app"

  zap trash: [
    "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
    "~/Library/Logs/JetBrains/Toolbox",
    "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
    "~/Library/Application Support/JetBrains/Toolbox",
  ]
end
