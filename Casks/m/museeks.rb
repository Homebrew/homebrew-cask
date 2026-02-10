cask "museeks" do
  version "0.23.2"
  sha256 "d31c453ab3315cc639c2adb6e0e223be49a73f3fb82c0b8c0bd708e3283a0d56"

  url "https://github.com/martpie/museeks/releases/download/#{version}/Museeks_#{version}_universal.dmg",
      verified: "github.com/martpie/museeks/"
  name "Museeks"
  desc "Music player"
  homepage "https://museeks.io/"

  app "Museeks.app"

  zap trash: [
    "~/.config/museeks",
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
