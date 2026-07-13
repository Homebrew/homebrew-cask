cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-12"
  sha256 arm:   "7198b645985f1a10ff31aff5d156175a4e4ac05a000bd37ff35d02f8eeba74bc",
         intel: "eb08a594a448f6cf4c2bcc31129f2c05f84687d83c58fc22ebd1587b76106805"

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
