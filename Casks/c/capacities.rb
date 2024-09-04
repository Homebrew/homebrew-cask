cask "capacities" do
  arch arm: "-arm64"

  version "1.41.11"
  sha256 arm:   "c3c110559a13313b844ac5408fc8007e2b91e05a0cf00e4555cb2726a2f9ec6b",
         intel: "230ad89d9b9b8f111149239fed49abbaaaeaf9bb2dcc4741637e978c07a031f2"

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
