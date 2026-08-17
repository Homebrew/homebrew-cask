cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-16"
  sha256 arm:   "08d7368e764999fff62f069fc0215f31961274d6676f89e83b4ce6df828602fe",
         intel: "ab6acf2e59a9900f51135708443d9ed1ddbd35e7042384d57c78f746245e0cf3"

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

  depends_on macos: :ventura

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
