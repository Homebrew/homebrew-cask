cask "swift-craft-launcher" do
  version "0.2.2-beta"

  on_arm do
    sha256 "22446f9c018a67b566e90ffe45a2b5541c1ce53416270ff3f3a5bdbc6bfd312c"
    url "https://github.com/suhang12332/Swift-Craft-Launcher/releases/download/#{version}/Swift_Craft_Launcher_arm64_#{version}.dmg"
  end

  on_intel do
    sha256 "1595496909251c159891e60caf4da29c91b697c2b2aeefef33505e7f0bf95acc"
    url "https://github.com/suhang12332/Swift-Craft-Launcher/releases/download/#{version}/Swift_Craft_Launcher_x86_64_#{version}.dmg"
  end

  name "Swift Craft Launcher"
  desc "Modern Minecraft launcher for macOS built with SwiftUI"
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
