cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-15"
  sha256 arm:   "2058f09ccb080cfd191478adc96e4cc0af799d24866ae60472c30d783a9e06cb",
         intel: "5e4f368c3bc422e5cf29b7f489d26e3ff477f5b017c60f27774dc89f1868459e"

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
