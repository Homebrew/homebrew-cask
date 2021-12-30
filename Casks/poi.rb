cask "poi" do
  version "10.7.0"
  sha256 "7ed96eed3fd572e31c395e2407bdf0138ffe0953a0054e00a77dde70f38d4759"

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg",
      verified: "github.com/poooi/poi/"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.io/"

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi/",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
