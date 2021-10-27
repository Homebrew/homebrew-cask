cask "jetbrains-space" do
  version "2021.2.2"
  sha256 "a029af727734b0ebc7a06842846157869a31d9c743409eb3f7b713d1bc455798"

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
