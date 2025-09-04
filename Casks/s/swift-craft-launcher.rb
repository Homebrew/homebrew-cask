cask "swift-craft-launcher" do
  version "0.2.2-beta"

  on_arm do
    sha256 "b1715f7675bb3fdb55ae222aeb89710e11e0b63604b73dfd11f32fb9b048e359"

    url "https://github.com/suhang12332/Swift-Craft-Launcher/releases/download/#{version}/Swift_Craft_Launcher_arm64_#{version}.dmg"
  end
  on_intel do
    sha256 "d9ce2fa1aad1daaf3b4c2103899396d665b7669f523a32002bf97dc7e009a217"

    url "https://github.com/suhang12332/Swift-Craft-Launcher/releases/download/#{version}/Swift_Craft_Launcher_x86_64_#{version}.dmg"
  end

  name "Swift Craft Launcher"
  desc "Modern Minecraft launcher built with SwiftUI"
  homepage "https://suhang12332.github.io/swift-craft-launcher-web.github.io/"

  livecheck do
    url "https://github.com/suhang12332/Swift-Craft-Launcher/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Swift Craft Launcher.app"

  uninstall quit: "com.su.code.SwiftCraftLauncher"

  zap trash: [
    "~/Library/Application Support/Swift Craft Launcher",
    "~/Library/Caches/com.su.code.SwiftCraftLauncher",
    "~/Library/Logs/Swift Craft Launcher",
    "~/Library/Preferences/com.su.code.SwiftCraftLauncher.plist",
    "~/Library/Saved Application State/com.su.code.SwiftCraftLauncher.savedState",
  ]
end
