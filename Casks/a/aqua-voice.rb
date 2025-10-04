cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "38264b2028c62ab99694bb408792f0da2597a5d0f22e4a90a88da83133260f70",
         intel: "d89314f6bcbf2020192a9f245dd225075213e5e8953128a8c7ff6ccf946d5f7e"

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
