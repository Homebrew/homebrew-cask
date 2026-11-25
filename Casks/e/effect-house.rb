cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.17.0,1712,11182026,104"
    sha256 "fff9c43ada85a0b192402986671adc7ddb4cb2436bff038325ca332d5ec3096c"
  end
  on_intel do
    version "5.17.0,3031,11182026,104"
    sha256 "f99c5fd55240aa3f564da07d5969909f63cc41c1bfa1595631621feba73a057e"
  end

  url "https://sf16-va.tiktokcdn.com/obj/eden-va2/olaa_ajlmml_zlp/ljhwZthlaukjlkulzlp/V#{version.csv.first.no_dots}External_Release_Builds_#{version.csv.third}/Effect_House_v#{version.csv.first}.#{version.csv.second}_#{arch}_#{version.csv.fourth}.dmg"
  name "TikTok Effect House"
  desc "Create vibrant AR effects for TikTok"
  homepage "https://effecthouse.tiktok.com/"

  livecheck do
    url "https://effecthouse.tiktok.com/api/web/download", post_form: {
      osType:     "macOS",
      arch:       livecheck_arch,
      entryPoint: version.csv.fourth,
    }
    regex(%r{(\d+(?:[._-]\d+)*)/Effect[._-]House[._-]v?(\d+(?:\.\d+)+)(?:\.(\d+))(?:[._-]#{arch})?[._-](\d+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]},#{match[4]}"
    end
  end

  depends_on :macos

  app "Effect House.app"

  zap trash: [
    "~/Library/Application Support/EffectHouse",
    "~/Library/HTTPStorages/com.ies.orion",
    "~/Library/Logs/Effect House_debug.log",
    "~/Library/Saved Application State/com.ies.orion.savedState",
  ]
end
