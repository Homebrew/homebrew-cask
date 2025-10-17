cask "poi" do
  arch arm: "-arm64"

  version "11.0.0"
  sha256 arm:   "3f831d65762f4dd61535289c2a9f52537e86017ed8bfcf72f6503007acaa7fb7",
         intel: "19ce5500b4fefd684180db4090a0beb4648c3fe377854bb7856e11f2977164c9"

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
