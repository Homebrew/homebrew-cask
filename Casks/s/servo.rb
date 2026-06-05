cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-04"
  sha256 arm:   "de972385bd125c7d4a90759259e2b8f4fe8d447244b3d56b56b2836cec20d6e5",
         intel: "106a38f9bebde1dd2590f77d9796fc221bcf36545058cbb175b09d2c9dcfa3f0"

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
