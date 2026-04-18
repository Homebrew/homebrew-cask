cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-17"
  sha256 arm:   "b2840505fe701db5b9c29a9a56e86ec692e10494e77de3d72f4e3cbf3dd97f6d",
         intel: "db48b976f00782b4c5886494b44312abfa382d8a44b6d5555ba7af648634b309"

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
