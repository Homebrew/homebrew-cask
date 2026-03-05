cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-04"
  sha256 arm:   "4d1057a83005702f6d7627f4922ec7f87de5dd34ff7dbb242222268bc52f7930",
         intel: "158995b894bec09a5d9e0bea1a9ae5f404d4df9edbfe235ce778f36c3b6221e8"

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
