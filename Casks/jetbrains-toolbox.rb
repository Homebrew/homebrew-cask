cask "jetbrains-toolbox" do
  version "1.20.7939"
  sha256 "8c1486443479e4e14e4a9f9c2bb16e46dacc3c53b6864a502427f31807bbfefe"

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
