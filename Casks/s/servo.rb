cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-25"
  sha256 arm:   "76b9d23870cccba2ffadc2b3fc80dbfe6c59c88bbb04761820cc6713d0f9bc28",
         intel: "4c87cf1f5e072a7ecc9bc319a337dc1a76b2bfbfbb693c11c8a4b65759f8d82c"

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
