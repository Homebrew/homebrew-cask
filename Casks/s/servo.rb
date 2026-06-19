cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-18"
  sha256 arm:   "6e5cba1f37b9600d93a9986c1b06cdbfa9ddbd8f713cb3f393d3e80491c5eb1f",
         intel: "3cc1bc7ae43c21847b089e8a2c310f6935b8feec314186e01d85718a147b68d9"

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
