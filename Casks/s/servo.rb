cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-26"
  sha256 arm:   "f0e8c6be5e7525a2a9ea15d34b1b02df4bdc8d85cfd2d8a8bb806e1843b54f9d",
         intel: "deb01baf907934e0a2d1758c3dbeac5161d6accff9a6ef333ca43b231f5436b0"

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
