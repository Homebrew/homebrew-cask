cask "effect-house" do
  arch arm: "_Applesilicon_101", intel: "_Intel_101"

  on_arm do
    version "4.6.1,8521,09182024"
    sha256 "c6dd57f3d91c537d20a89aef25edc5d52163eacc48417841cf6c7d44d770cc96"
  end
  on_intel do
    version "4.6.1,8522,09182024"
    sha256 "3cd2ba0fbdfc9dc7e9e6a935fad49aa546c35999f8f25e25fe6f45b9449a22d3"
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
