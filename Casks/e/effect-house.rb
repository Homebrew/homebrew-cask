cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"

  on_arm do
    version "4.6.2,4202,10082024,104"
    sha256 "a166faf807538f2beb19f84a448c56bf8b074b5e9652cc543787525d44438e26"
  end
  on_intel do
    version "4.6.2,4206,10082024,104"
    sha256 "c457cfdebea39ab06b2830f0b4422d48c0319783ead3bced37699cc07c335466"
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
