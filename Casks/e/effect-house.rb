cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"

  on_arm do
    version "4.11.2,6777,02262025,104"
    sha256 "7f4f61f97721002770032f719d815fab203bc79349f7c8efa657be66eb9c9501"
  end
  on_intel do
    version "4.11.2,6780,02262025,104"
    sha256 "3a51871abbf2948fb91f3480272c08f38a85d72da22118623358f640a3cc4bfa"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_External_Release_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}_#{arch}_#{version.csv.fourth}.dmg",
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
