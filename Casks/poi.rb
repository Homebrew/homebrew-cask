cask "poi" do
  arch arm: "-arm64", intel: ""

  version "10.9.2"

  on_intel do
    sha256 "eab57d10b4e8002231cbfb502589d97fcea9edce85c21850bdd5cbc574ccfa19"
  end
  on_arm do
    sha256 "217444a15bcfaae1dc75807fcf139c66d0b6295fa1f461a45f811bae09008a77"
  end

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
