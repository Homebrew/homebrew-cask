cask "museeks" do
  version "0.23.1"
  sha256 "8f7795c5921e2e43ea1bf0438b6f5ae717b05dfb00e017f5c50fea2c8bef5e5d"

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
