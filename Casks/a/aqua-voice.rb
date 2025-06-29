cask "aqua-voice" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "182e0ed0e5669adb3813cd9105e3f0b28f27799ee57b1de801c22fbbbc0cba4b",
         intel: "f9ada21146fd1be72c0595a05261e3bfcd00e0e52ae33f81bcf89f2fb0554d18"

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
