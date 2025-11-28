cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-28"
  sha256 arm:   "228e45709cddca01d223f114e0d4d1c3e6873f055d06509a3899e6beb88c463c",
         intel: "61c800715636fb0d286916de1e72ca272a2c920ae3e0a0bf1c7eae836bb9df51"

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
