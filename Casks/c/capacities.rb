cask "capacities" do
  arch arm: "-arm64"

  version "1.45.11"
  sha256 arm:   "df9c508030240423d73aca3a1dd65a4d6fca7a05ae7b0ede7f5f2902389bba5f",
         intel: "0c59c267f5cd8032d29247347ebea8a00981eda0e763ae720ace63707ccbbe7b"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
