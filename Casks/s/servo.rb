cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-22"
  sha256 arm:   "edd1afba96df2925a1a67a0693aed4326964e7c45558186a8818e64b9f1ed1ad",
         intel: "d933c6247c1ba5e195aae9bd18da86162d5355ca37bc55081703469a94fe6f56"

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
