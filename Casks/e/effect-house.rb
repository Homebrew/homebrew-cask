cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"

  on_arm do
    version "4.9.2,1549,12192024,104"
    sha256 "0dd0dcbaaed585e1d1fb5bbc8c3661659fdc1c3a334e8688ab9619e9afcd6d92"
  end
  on_intel do
    version "4.9.2,1553,12192024,104"
    sha256 "11587dfb1670d6a313c27f47529f85de69c5a5e6ff789eb7e97286386dc68cd0"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_ExternalRelease_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}_#{arch}_#{version.csv.fourth}.dmg",
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
