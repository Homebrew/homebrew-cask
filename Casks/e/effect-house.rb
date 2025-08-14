cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.1.1,0130,08142025,104"
    sha256 "13aace842322827e12d6dbdb1f3c5b5800de5c3bdd7d2dd04b8d1eb587f90693"
  end
  on_intel do
    version "5.1.1,0135,08142025,104"
    sha256 "a85d06a2f8c1164a494e6d4bb68f7db63ca9bc35fd26a8d2b3ee5756418560b0"
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

  depends_on macos: ">= :sierra"

  app "Effect House.app"

  zap trash: [
    "~/Library/Application Support/EffectHouse",
    "~/Library/HTTPStorages/com.ies.orion",
    "~/Library/Saved Application State/com.ies.orion.savedState",
  ]
end
