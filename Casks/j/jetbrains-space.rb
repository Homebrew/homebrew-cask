cask "jetbrains-space" do
  version "2023.1.7"
  sha256 "5fe5e8c36af378ed1b7a8c6e94b4becdd01110b69f04b97ffea53d1380508bd4"

  url "https://download-cdn.jetbrains.com/space/jetbrains-space-#{version}.zip"
  name "JetBrains Space"
  desc "Team communication and collaboration software"
  homepage "https://www.jetbrains.com/space/"

  livecheck do
    url "https://download-cdn.jetbrains.com/space/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "JetBrains Space.app"

  zap trash: [
    "~/Library/Application Support/JetBrains Space",
    "~/Library/Logs/JetBrains Space",
    "~/Library/Preferences/com.jetbrains.space.desktop.plist",
    "~/Library/Saved Application State/com.jetbrains.space.desktop.savedState",
  ]
end
