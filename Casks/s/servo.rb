cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-27"
  sha256 arm:   "f13991c3fee92b9a9fa94562024c07788de97f5f2ee9794f2a2d05ae7826b6d1",
         intel: "0f1b763a501fb368b33b03178a3fb282fe686d1b7e82055b51d2bcbe2ace1612"

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
