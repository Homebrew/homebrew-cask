cask "effect-house" do
  arch arm: "_M1_101", intel: "_Intel_101"

  on_arm do
    version "4.4.0,2888,07302024"
    sha256 "645a32dfc3e432dfad1f1701d3d8328d911a3e05d56c457e4000fbc4f87811bc"
  end
  on_intel do
    version "4.4.0,2889,07302024"
    sha256 "c080cabc8e411a4ed3e75b5c0128023482214dbe2bb1c45f3535b81a07c0dab5"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_External_Release_Builds_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}#{arch}.dmg",
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
