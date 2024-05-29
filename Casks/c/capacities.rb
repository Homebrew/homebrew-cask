cask "capacities" do
  arch arm: "-arm64"

  version "1.38.1"
  sha256 arm:   "84f9c6ada786a7d461f33f93e055ac7e2cdb7e8c76ca54ffb200b400f97f0648",
         intel: "591d973eaa12d2fcfa97f9eafec0de98760891696476f985b102ce2bbe8a75d3"

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
