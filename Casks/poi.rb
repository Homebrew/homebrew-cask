cask "poi" do
  version "10.9.1"
  sha256 "5eff9c247998274c8aff80cec4935794c9080ea1d31a90d26d12d2284cd35dfb"

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}.dmg",
      verified: "github.com/poooi/poi/"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.moe/"

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi/",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
