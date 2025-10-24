cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.10.2"
  sha256 arm:   "03c09ac9f8778c0e5eadf95e9441ab85a7fe003ce041fe487564242f5be28cdb",
         intel: "9f198b410bd2291ec795d4d0ecceb6d2b45bf8907f5a5b2203e3e067258fcf31"

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
