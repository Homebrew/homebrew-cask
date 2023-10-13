cask "jetbrains-space" do
  version "2023.1.4"
  sha256 "ed8021cb4342e332fc08ed008b8e4c7b0b16c5cc8128e5eebf88ed6f81714890"

  url "https://download-cdn.jetbrains.com/space/jetbrains-space-#{version}.zip"
  name "JetBrains Space"
  desc "Team communication and collaboration software"
  homepage "https://www.jetbrains.com/space/"

  livecheck do
    url "https://download-cdn.jetbrains.com/space/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "JetBrains Space.app"

  zap trash: [
    "~/Library/Application Support/JetBrains Space",
    "~/Library/Logs/JetBrains Space",
    "~/Library/Preferences/com.jetbrains.space.desktop.plist",
    "~/Library/Saved Application State/com.jetbrains.space.desktop.savedState",
  ]
end
