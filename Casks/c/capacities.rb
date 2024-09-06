cask "capacities" do
  arch arm: "-arm64"

  version "1.41.13"
  sha256 arm:   "ded69852edd7e6b04b7e346c2f326031d23b9c78d674cfc82d53aa7049e78946",
         intel: "6b873f0e91d4f4cfa66f63732a0a396ddebab2bee1ff88a41fcc9b3b5e36a6fa"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
