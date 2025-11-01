cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.10.4"
  sha256 arm:   "bfee7e2483922697d0a8ac675f17f27ef5564c046e92c8dfcdf4e369edcddfbd",
         intel: "4cc3a3a3e3e1f5f82a70c6a93480f9ed8143952c371ba2cc93bf5608a0e45840"

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
