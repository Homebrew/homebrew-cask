cask "poi" do
  version "10.6.0"
  sha256 "dcca7d7b47ebab2fb7a702aba33b07901f203f0f6efd2f846b0dfc0df076cfad"

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
