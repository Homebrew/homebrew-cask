cask "jetbrains-space" do
  version "2023.1.1"
  sha256 "9d754885bc3b490358d0e053670253888d5d60987cb177c497b062e747479bcd"

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
