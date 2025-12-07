cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.10.10"
    sha256 "309fa3d613a2753283701eebe818e2a8469e2adef64105f62c892ee98df7bb67"
  end
  on_intel do
    version "0.10.9"
    sha256 "c86160114b38c2b6a76ba43df9df14df6b17032a1caa1d27b5144f5281bec8c9"
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
