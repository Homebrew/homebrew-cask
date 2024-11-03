cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"

  on_arm do
    version "4.7.2,8994,10282024,104"
    sha256 "0613233dbc3de06b88d31f3b0734095c0478b4bb5795164780fd1561c230de26"
  end
  on_intel do
    version "4.7.2,8998,10282024,104"
    sha256 "83775f9b1e1ef8b268aa9b16b3d45175b6516e9fc62a4b7aa047aa5cd85fdfe8"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_External_Release_Builds_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}_#{arch}_#{version.csv.fourth}.dmg",
      verified: "sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/"
  name "TikTok Effect House"
  desc "Create vibrant AR effects for TikTok"
  homepage "https://effecthouse.tiktok.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :sierra"

  app "Effect House.app"

  zap trash: [
    "~/Library/Application Support/EffectHouse",
    "~/Library/HTTPStorages/com.ies.orion",
    "~/Library/Saved Application State/com.ies.orion.savedState",
  ]
end
