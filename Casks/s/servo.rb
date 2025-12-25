cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-25"
  sha256 arm:   "57bb8eae6e8b29d8fdfc7539ba06e2519c65a68c686e0fca5ddbe4db15e80593",
         intel: "b8aca859af42c13c1b2f412aadc76a8a39309015eb3029cdbdb63bae9b8fbd7c"

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
