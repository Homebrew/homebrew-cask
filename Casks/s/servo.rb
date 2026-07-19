cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-18"
  sha256 arm:   "e02b6719453e4203fa37046e652be526eeae9f849031522f184f8b1bdba9c2fe",
         intel: "ccc4e80766e9628c8c96ba85fb79dbbf3a64fb18cf5d3e1e4183f35fc48baeb5"

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
