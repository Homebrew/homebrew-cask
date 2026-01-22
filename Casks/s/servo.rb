cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-22"
  sha256 arm:   "05f358f2f7dcbb1b210152821728fadc49a0c22ad87a5efb7ee9b254f376fdf0",
         intel: "6aeb43083d9e63790c5a45b33ab263b989945938e0c9e983c5d81c2ad3b0f43d"

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
