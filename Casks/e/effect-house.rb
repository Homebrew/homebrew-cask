cask "effect-house" do
  on_arm do
    version "3.4.1.424,M1_101,341_ExternalRelease_1107"
  end
  on_intel do
    version "3.4.1.468,Intel_101,341_ExternalRelease_1107"
  end
  sha256 :no_check

  livecheck do
    skip "No version information available"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/#{version.csv.third}/Effect_House_v#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "sf16-va.tiktokcdn.com/"
  name "Effect House"
  desc "Create vibrant AR effects for TikTok"
  homepage "https://effecthouse.tiktok.com/"

  depends_on macos: ">= :sierra"

  app "Effect House.app"

  zap trash: "~/Library/Application Support/EffectHouse"
end
