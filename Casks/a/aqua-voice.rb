cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.10.11"
    sha256 "e2c222c5a6a37d84a0c3e68dbc1845342ff8915b6e68cca0dc2d72511ce2ab15"
  end
  on_intel do
    version "0.10.11"
    sha256 "a9d53deb4f53ab59f97b264e858215681369765ac199582e8b4d9403ec649445"
  end

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
