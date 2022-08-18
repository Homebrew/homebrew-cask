cask "poi" do
  version "10.9.0"
  sha256 "c6deb80f7fe7dc6e34ed21a01d11be38c54affd043d7e73677aa5c4dd15f0ed7"

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
