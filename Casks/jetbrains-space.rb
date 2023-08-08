cask "jetbrains-space" do
  version "2023.1.2"
  sha256 "d2f76f3bad4701c0fac853a2c6a614046e3d094a40ed0c53998f95f511f947a1"

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
