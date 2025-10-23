cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.10.1"
  sha256 arm:   "350c27b77c2a0ba6fd69f0835dd00d1ee7befaa47687fd1dac8a4f8a9eca04c9",
         intel: "9aa39590db38c2908ec80bcf1bb2608f2e6d1888f1f0bc3c401edcd4834abe41"

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
