cask "spaceman" do
  version "1.0"
  sha256 "0d8b6005609fc274da11ca2e0f5b327ce4d998be88dbb670d9b3428de5995ae0"

  url "https://github.com/Jaysce/Spaceman/releases/download/v#{version}/Spaceman.#{version}.dmg"
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
