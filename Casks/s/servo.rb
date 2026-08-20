cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-19"
  sha256 arm:   "f28a57a1065ced7c9dfabff42b4613e0fe2a5bfeea2d7e9af9e506ec6fdc31c8",
         intel: "895fd0d0bba5019b61c1a9070454c131f8932c3888e7cc97d375be232f6d218b"

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
