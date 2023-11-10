cask "capacities" do
  arch arm: "-arm64"

  version "1.29.11"
  sha256 arm:   "b1e3f224ec5fcbf206cee84c80c6852935de6326a9e43d2f9b750cbc20edbf2b",
         intel: "eb114f84dba9e741c3d9119428d82a31bda7b761d2fce0b02bc725531332b77f"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
