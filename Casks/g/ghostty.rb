cask "ghostty" do
  version "1.0.0"
  sha256 "091f7a2b3f4160a16d7d52b2822124bb9d5714993815f62a7d70027984372652"

  url "https://release.files.ghostty.org/#{version}/Ghostty.dmg"
  name "Ghostty"
  desc "Terminal emulator with platform-native UI and GPU acceleration"
  homepage "https://ghostty.org/"

  app "Ghostty.app"

  zap trash: [
    "./.cache/ghostty",
    "Library/Preferences/com.mitchellh.ghostty.plist",
    "Library/HTTPStorages/com.mitchellh.ghostty/",
  ]
end
