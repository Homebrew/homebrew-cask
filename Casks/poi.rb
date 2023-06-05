cask "poi" do
  arch arm: "-arm64"

  version "10.9.2"
  sha256 arm:   "217444a15bcfaae1dc75807fcf139c66d0b6295fa1f461a45f811bae09008a77",
         intel: "eab57d10b4e8002231cbfb502589d97fcea9edce85c21850bdd5cbc574ccfa19"

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}#{arch}.dmg",
      verified: "github.com/poooi/poi/"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.moe/"

  depends_on macos: ">= :high_sierra"

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi/",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
