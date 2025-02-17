cask "museeks" do
  version "0.20.7"
  sha256 "369861645f7653e6459ccac18cce7d1dc1434f1c8b9ffb28082a21de74a8fdcc"

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
