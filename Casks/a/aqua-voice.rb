cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.10.7"
  sha256 arm:   "0351fcd82431bd2e54fdd98d847d5494e530bfe798853899fce405ede5d562d7",
         intel: "73ec2c95aaea4c78dd6a4db962f030132583204985287d0a3fd4ac83987e5d32"

  url "https://d1a1dx1sgvjqrz.cloudfront.net/aqua-voice-updates/darwin/#{arch}/Aqua+Voice-#{version}-#{arch}.dmg",
      verified: "d1a1dx1sgvjqrz.cloudfront.net/"
  name "Aqua Voice"
  desc "Speech-to-text system"
  homepage "https://withaqua.com/"

  livecheck do
    url "https://aqua-desktop-builds.s3.amazonaws.com/aqua-voice-updates/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true

  app "Aqua Voice.app"

  zap trash: [
    "~/Library/Application Support/Aqua Voice",
    "~/Library/Caches/com.electron.aqua-voice",
    "~/Library/Logs/Aqua Voice",
  ]
end
