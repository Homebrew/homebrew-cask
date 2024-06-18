cask "effect-house" do
  arch arm: "_M1_101", intel: "_Intel_101"

  on_arm do
    version "4.2.4,132,0531"
    sha256 "c78279276d8023894ba11994a845167f8e8bf94f5147261218abba1304313714"
  end
  on_intel do
    version "4.2.4,115,0531"
    sha256 "c8868e3718a44f0a8b1bf86457af350d2569c9aee3267fea7006568c1e368901"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_External_Release_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}#{arch}.dmg",
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
