cask "spaceman" do
  version "0.94"
  sha256 "a49aea8f91b8ef0908b4c196f403f5fe67b299eedadf6b78e2c45aba8f48d3a8"

  url "https://github.com/Jaysce/Spaceman/releases/download/v#{version}/Spaceman.#{version}.dmg"
  appcast "https://github.com/Jaysce/Spaceman/releases.atom"
  name "Spaceman"
  desc "View Spaces / Virtual Desktops in the menu bar"
  homepage "https://github.com/Jaysce/Spaceman"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Spaceman.app"

  uninstall quit: "dev.jaysce.Spaceman"

  zap trash: [
    "~/Library/Application Scripts/dev.jaysce.Spaceman-LaunchAtLoginHelper",
    "~/Library/Caches/dev.jaysce.Spaceman",
    "~/Library/Containers/dev.jaysce.Spaceman-LaunchAtLoginHelper",
    "~/Library/Preferences/dev.jaysce.Spaceman.plist",
  ]
end
