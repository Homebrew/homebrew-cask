cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "c09a962c76d52028cea27de7aeb5f32519d21bc1793ce62b2188ff2ae787cee8",
         intel: "29b9c6489e43aec8f414c77d3bfcde3ed0dd123e3403e2a9e9e1f08fc4b4f498"

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
  depends_on macos: ">= :catalina"

  app "Aqua Voice.app"

  zap trash: [
    "~/Library/Application Support/Aqua Voice",
    "~/Library/Caches/com.electron.aqua-voice",
    "~/Library/Logs/Aqua Voice",
  ]
end
