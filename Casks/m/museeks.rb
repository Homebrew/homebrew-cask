cask "museeks" do
  version "0.22.2"
  sha256 "96c6e2712938fee430146b04813a14b1916af35fe39ca3f464c51e7d09dcddac"

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
