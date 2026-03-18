cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-17"
  sha256 arm:   "97df24d744630316dac81e4b63c0b2080a63f09fd99edd6ea21c8e86dac15f34",
         intel: "1928ed602f49d594b23012f151d94a3f2f17daddfce2a18aa30afd8839e3c64d"

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
