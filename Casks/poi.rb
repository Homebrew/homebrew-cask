cask "poi" do
  version "10.8.0"
  sha256 "050f317e303b1955ad977fa7e50bd77ca43f82e3658aa7e4d963bc41d57a77c1"

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
