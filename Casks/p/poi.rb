cask "poi" do
  arch arm: "-arm64"

  version "11.1.0-win7"
  sha256 arm:   "4828c1034bc014884e9342fcd7914a9ff4b309365c3c95d18cc65b8e3918b33c",
         intel: "42528fed19cc732b5c5946f540226a2b8b376b2b3974727d779398e6ed687aaf"

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
