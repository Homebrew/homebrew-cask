cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  on_arm do
    version "4.15.0,3792,06172025,104"
    sha256 "77182dd0d9682afbf18f988cc5015cc621fcc53cccc838db10bc4e2001b2de08"
  end
  on_intel do
    version "4.15.0,3794,06172025,104"
    sha256 "f10bb1a947713e47b75b9a1f54319f0e1b215cebc43afedb5c1d45a6f4871cf6"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}_External_Release_Builds_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}_#{arch}_#{version.csv.fourth}.dmg",
      verified: "sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/"
  name "TikTok Effect House"
  desc "Create vibrant AR effects for TikTok"
  homepage "https://effecthouse.tiktok.com/"

  livecheck do
    url "https://effecthouse.tiktok.com/api/web/download", post_form: {
      osType:     "macOS",
      arch:       livecheck_arch,
      entryPoint: version.csv.fourth,
    }
    regex(%r{(\d+)/Effect[._-]House[._-]v?(\d+(?:\.\d+)+)(?:\.(\d+))(?:[._-]#{arch})?[._-](\d+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]},#{match[4]}"
    end
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :sierra"

  app "Effect House.app"

  zap trash: [
    "~/Library/Application Support/EffectHouse",
    "~/Library/HTTPStorages/com.ies.orion",
    "~/Library/Saved Application State/com.ies.orion.savedState",
  ]
end
