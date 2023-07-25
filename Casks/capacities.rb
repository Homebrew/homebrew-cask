cask "capacities" do
  arch arm: "-arm64"

  version "1.26.20"
  sha256 arm:   "4bb7b094e021a00e6d79b18fd4621c3ef78d0ce5ae236a243f0222b38648c0aa",
         intel: "ed479920276c04fc51b12239dd948284a76397da5d46597a75c35a2765ec3ca2"

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
