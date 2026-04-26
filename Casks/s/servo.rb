cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-25"
  sha256 arm:   "80f31723e8a041af6f269fd01d3a5964fd6b2370b272e8667ce57b2ef95b7a00",
         intel: "bcb5d777dfac430a03924897287d8e90e26d523e96ce7dc47921162e4891f56a"

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
