cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-29"
  sha256 arm:   "23e8d165037a1a88c812094956fbf6714192edd428b63c70fae45ccd1a416ac6",
         intel: "3f55915bc83d6e1b7f0ccb9ba4ce9a09a7cee11a5b25ee07e5f39cef2d77707c"

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
