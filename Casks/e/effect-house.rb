cask "effect-house" do
  arch arm: "Applesilicon", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  on_arm do
    version "5.7.1,0416,01292026,104"
    sha256 "8f5ea1fd893139512aa8e19510ae39124c989a43354d6b5d2b52fee734236b7d"
  end
  on_intel do
    version "5.7.1,0421,01292026,104"
    sha256 "ddb48961a13dad701616f9d357690df144032450de7519eeaff725eb5680e629"
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
    regex(%r{(\d+(?:[._-]\d+)*)/Effect[._-]House[._-]v?(\d+(?:\.\d+)+)(?:\.(\d+))(?:[._-]#{arch})?[._-](\d+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]},#{match[4]}"
    end
  end

  app "Effect House.app"

  zap trash: [
    "~/Library/Application Support/EffectHouse",
    "~/Library/HTTPStorages/com.ies.orion",
    "~/Library/Saved Application State/com.ies.orion.savedState",
  ]
end
