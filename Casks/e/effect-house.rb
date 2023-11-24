cask "effect-house" do
  arch arm: "_M1_101", intel: "_Intel_101"

  on_arm do
    version "3.4.1,424,1107"
    sha256 "cef69652a1e4572aeec7eb72b147bd072340f866a93cb28886adfe82452217eb"
  end
  on_intel do
    version "3.4.1,468,1107"
    sha256 "ecf9cfadf8ee587f4845fe771297a904ffe347f9e1c70b66fd5312202ae78e18"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/#{version.csv.first.no_dots}_ExternalRelease_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}#{arch}.dmg",
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
