cask "jetbrains-toolbox" do
  version "1.18.7455"
  sha256 "b7b7d4d28448a39214e3ba435af93a137e67ecde85e6ed9f06fa290deba88936"

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
