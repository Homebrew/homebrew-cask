cask "museeks" do
  version "0.13.0"
  sha256 "d2a8290ed596960ed4f12fdbc495ed82befbec3df8299100386c16d81508eedd"

  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks-x64.dmg",
      verified: "github.com/martpie/museeks/"
  name "Museeks"
  desc "Music player"
  homepage "https://museeks.io/"

  app "Museeks.app"

  zap trash: [
    "~/Library/Application Support/museeks",
    "~/Library/Saved Application State/com.electron.museeks.savedState",
  ]
end
