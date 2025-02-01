cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"

  on_arm do
    version "4.10.0,6405,01232025,104"
    sha256 "9892f3df0cd61f0b7afb25067ae1d9ca53be9f9aa2df12b4bbf44262bcd98d31"
  end
  on_intel do
    version "4.10.0,6412,01232025,104"
    sha256 "2449d34db0f6032950930beefb0faff684d3f8b521dee6ad688001230bdc0bed"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_release_Builds_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}_#{arch}_#{version.csv.fourth}.dmg",
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
