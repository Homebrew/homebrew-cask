cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-17"
  sha256 arm:   "f3c62870d13cb8ed56890dc66ece01b146e9075c123f98acb93e15185953611b",
         intel: "2b907e94f272a518332d40cfd993adb4a41629d261eaffb19ab8c89852968833"

  url "https://github.com/servo/servo-nightly-builds/releases/download/#{version}/servo-#{arch}-apple-darwin.dmg",
      verified: "github.com/servo/servo-nightly-builds/"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)$/i)
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
