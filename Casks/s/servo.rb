cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-15"
  sha256 arm:   "71462bbdc4aa7eb6dee25442423ae9191be6070a7b28ccdfe1447ac04036b4c4",
         intel: "74929670947faafbb1919bdedacf3a0a90d53b40e2c9391e9258363261416ac0"

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
