cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.12.1"
  sha256 arm:   "a2fc413fe92642b569f9cc0359757db177c0fb3d2f0d047c5ae23cc5d51c6818",
         intel: "caa2a132a7644374ebafd55822b6aa1d344a4e9d84a66e5a6fce2498f564d1ac"

  url "https://d1a1dx1sgvjqrz.cloudfront.net/aqua-voice-updates/darwin/#{arch}/Aqua%20Voice-darwin-#{arch}-#{version}.zip",
      verified: "d1a1dx1sgvjqrz.cloudfront.net/"
  name "Aqua Voice"
  desc "Speech-to-text system"
  homepage "https://aquavoice.com/"

  livecheck do
    url "https://aqua-desktop-builds.s3.amazonaws.com/aqua-voice-updates/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Aqua Voice.app"

  zap trash: [
    "~/Library/Application Support/Aqua Voice",
    "~/Library/Caches/com.electron.aqua-voice",
    "~/Library/Logs/Aqua Voice",
  ]
end
