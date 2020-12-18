cask "jetbrains-toolbox" do
  version "1.19.7784"
  sha256 "1e0f90d3c8cdedf9a49fad903dfbcdaea8df1ec1592ef7963065d8725b10041f"

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
