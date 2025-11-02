cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.10.5"
  sha256 arm:   "b181325facf37ed99711b51a477d4c4eebb216149244d93ac9abec4b8c4341b1",
         intel: "67c6221133038fa65eaa2f162ddaf20912d140e0478c64fe139c41bd1e790de2"

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
