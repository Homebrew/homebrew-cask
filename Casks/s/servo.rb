cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-25"
  sha256 arm:   "9b97fcb15da0b5bd16d9eb6ee692f3345da69f049921ddcff58cabf6fbcb8585",
         intel: "78ab094bc9e5b2c307bcc9cdc2476f6b4d66576f07fe31e6c6b632bed772c95b"

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
