cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-11"
  sha256 arm:   "e8a102568d26157bab62d552659afb2db23f19bbcc0186f3a36cbd98d9f2b0a1",
         intel: "ec3958bfbdee40b03ba4ffab6aed4b48dc893d1ecf9c81c91d0966863b5ac7ea"

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
