cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.3.18"
    sha256 "6c16968042fa8b630bee29dd195e78ef49bd539863acc7e2ea46d4d3638714e9"
  end
  on_intel do
    version "0.3.16"
    sha256 "48d4e0331564bc392448d0b75c97c5973941d42d14e5ab57b0d1ca99cab96eb0"
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
  depends_on macos: ">= :catalina"

  app "Aqua Voice.app"

  zap trash: [
    "~/Library/Application Support/Aqua Voice",
    "~/Library/Caches/com.electron.aqua-voice",
    "~/Library/Logs/Aqua Voice",
  ]
end
