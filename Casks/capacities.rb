cask "capacities" do
  arch arm: "-arm64"

  version "1.23.52"
  sha256 arm:   "b611f29bb8b26c819978b46b3a5c6acd2949fbc8379aa19e37aac3d7689d515d",
         intel: "843165ea1cb1fa569fae1fd920c83e24269cf0e777c4a181cadc32bc038fcf84"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
