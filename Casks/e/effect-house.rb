cask "effect-house" do
  arch arm: "_M1_101", intel: "_Intel_101"

  on_arm do
    version "4.3.0,7157,0626"
    sha256 "ae421fe5d080e8d32f030f11eedd1cd91b3e82e3f0347bae1958f1675ab503db"
  end
  on_intel do
    version "4.3.0,7161,0626"
    sha256 "fd12450e2ffe11cb2c3fda888f50860d1ab24b40a682dc87853a9a10c1b14c7e"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}a_ExternalRelease_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}#{arch}.dmg",
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
