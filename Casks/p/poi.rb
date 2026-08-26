cask "poi" do
  arch arm: "-arm64"

  version "12.0.0"
  sha256 arm:   "1c3d4300fb08a7cafaf2cdc0ea79d52ebfcf66c4f01570c98a9cf1b046c0d675",
         intel: "4ab095d2c45bcbb2994ca5d0b400c89737154676f20e34a05e83ad14c881898e"

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}#{arch}.dmg",
      verified: "github.com/poooi/poi/"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.moe/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
