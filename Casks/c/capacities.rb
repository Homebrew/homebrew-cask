cask "capacities" do
  arch arm: "-arm64"

  version "1.43.44"
  sha256 arm:   "bd7cb35ce9f71264d79bbe4a5bf524a62e5f1315bafde018d75b2a43027f84d9",
         intel: "0656d654d117e4b61893fb11302688c522d6989b30b84edb12ab978e4d7218d3"

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
