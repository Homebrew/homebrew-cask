cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-23"
  sha256 arm:   "b8b02151d85de9dc1a3d30c33692d44551ec85ed1088d40bb96c4c45b75a38d9",
         intel: "f827e5f15b821d39cd25ac30544ae7e7f82eba2db14fb0d1a1419269daac1b4c"

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
