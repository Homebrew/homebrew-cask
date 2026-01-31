cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-30"
  sha256 arm:   "2a2c729b1320f41d3ac43e747731c23cae161749b6ae6072c956f1b5fb0fccbd",
         intel: "9fa956edfaaca86d4174d7c8cb22cd5e154c7f242b395dab21e13dc9e16836b7"

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
