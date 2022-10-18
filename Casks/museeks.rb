cask "museeks" do
  version "0.13.1"
  sha256 "79130a16985aab46e2e0c1c270e3339f96886cc60d2f02b531533dd0307b0d48"

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
