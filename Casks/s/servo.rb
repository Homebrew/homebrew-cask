cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-21"
  sha256 arm:   "9bba471452a27dbd843065fa9948b7e1e7eeda65fa0efd17449afd61e6340dbd",
         intel: "4e05a5d11619fa096e2892cabf7b36abf708187584318a2a35e13e9425077fbb"

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
