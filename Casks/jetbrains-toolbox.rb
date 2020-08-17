cask "jetbrains-toolbox" do
  version "1.17.7391"
  sha256 "fbe57524728b7356da951f81370263fe37d9aba9e5444e7a4cd1eed7c048a843"

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
  name "JetBrains Toolbox"
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
