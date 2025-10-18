cask "poi" do
  arch arm: "-arm64"

  version "11.0.0-win7"
  sha256 arm:   "5568fe2bc4e5af03377e2db47e5efb46f038faf658af033919b68a4349163b8d",
         intel: "52ee91db8b0d8a678be5c3bbbf025f73eb7ae415349d302378653cdb00eb9ac5"

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}#{arch}.dmg",
      verified: "github.com/poooi/poi/"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.moe/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
