cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-13"
  sha256 arm:   "961677080a2a4d027e67d6c7dd6e304b8894de765f47808cf72266014c546355",
         intel: "05b708a44f1a877b86f6e78be5ba243102c7c994d0d0ac6d310562ade9f69ee1"

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
