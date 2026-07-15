cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-14"
  sha256 arm:   "376ddf1a0aa27b4cfeda808959bcfed2f5459f3315037eeedc319410393b9cf9",
         intel: "9dcae094b242886eabb651eaf0531dfb4a310fb5191eac7ff8a40c16eaaa740c"

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
