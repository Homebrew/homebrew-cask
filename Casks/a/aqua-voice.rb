cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "b000fdad6d6f7ce8eea7ddce1913b3f7f7f181d93470f1d3ce0bc91d23dfcc24",
         intel: "4e7d758a77b44b006555b433ce50c820aacf0def8c349d64efeb6b4be0724fcc"

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
