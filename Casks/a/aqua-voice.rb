cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "d26a318aa0c6fc52a6d75ec03ef46b498d8f7d5e49aa5280fc9059c77fc91f7f",
         intel: "3d42006eb7022e75899b496fd1e5693fa24b2ea6221cd36f9a3de6286282b704"

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
