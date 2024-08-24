cask "effect-house" do
  arch arm: "_M1_101", intel: "_Intel_101"

  on_arm do
    version "4.4.1,1705,08142024"
    sha256 "0c43a941bb891a95dddb8884e2822bbb0c25ae9c033ae85febc093138c0c4365"
  end
  on_intel do
    version "4.4.1,1709,08142024"
    sha256 "7fac73e618cbe46969437ab3390e881f441c780a4dd3846ac8e3d518a45f4eb1"
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
