cask "capacities" do
  arch arm: "-arm64"

  version "1.41.15"
  sha256 arm:   "5ce7f629f5d9c665b43bdfe89d2b7950be32f9f7baa8f772be3d321e3c68eacb",
         intel: "f5a68e9f8c42a7f3cc8e7d3e19876f3b4b44e458c2de14ed01f7388d500afb02"

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
