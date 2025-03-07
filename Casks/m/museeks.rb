cask "museeks" do
  version "0.20.9"
  sha256 "2571aa5cb3ee4c3802906c1b304a7d31a6bad199b61a5b347e8627d42b9b9b4a"

  url "https://github.com/martpie/museeks/releases/download/#{version}/Museeks_#{version}_universal.dmg",
      verified: "github.com/martpie/museeks/"
  name "Museeks"
  desc "Music player"
  homepage "https://museeks.io/"

  depends_on macos: ">= :high_sierra"

  app "Museeks.app"

  zap trash: [
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
