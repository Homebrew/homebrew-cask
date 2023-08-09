cask "museeks" do
  arch arm: "arm64", intel: "x64"

  version "0.13.1"
  sha256 arm:   "97428b9d02dec50a80df8232d166e9460330acfda38b99320424350c33e8e061",
         intel: "79130a16985aab46e2e0c1c270e3339f96886cc60d2f02b531533dd0307b0d48"

  url "https://github.com/martpie/museeks/releases/download/#{version}/museeks-#{arch}.dmg",
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
