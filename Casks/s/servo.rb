cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-19"
  sha256 arm:   "f6b1a6c577ee4e141315a91b746aa646829c237256cfd5f4ca34b6021f7c4dbe",
         intel: "91a06be3b60a0feb6fe02ca8704b74e5f6f47d9e55c5241b256ae11ebea38a43"

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
