cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-11"
  sha256 arm:   "553b4cd69f38edb93e4bdb1e71675bd99c3bfa819216728ff83e735ad499a72d",
         intel: "dd78b14a693918d21394d791a63da52deaa650a1821c6a92bf393c111f2fc394"

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
