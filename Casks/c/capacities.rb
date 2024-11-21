cask "capacities" do
  arch arm: "-arm64"

  version "1.43.24"
  sha256 arm:   "2715aa80fd65c3f113f383c9c409faf520f9fd809f554489999b6f395f8212d9",
         intel: "8f1def1c2d66d286384724669873156007f8d17709c3ea8b971e62767c0d1828"

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
