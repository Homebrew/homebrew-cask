cask "capacities" do
  arch arm: "-arm64"

  version "1.40.3"
  sha256 arm:   "9d451ce05f99f8393a51147db3b2e52d425600e10b46b276e4db40780289f0e7",
         intel: "de2b22c69069fdcacc82a7b3c85f99b5cc8034f6ca56a329156cbadf80f5c3a2"

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
