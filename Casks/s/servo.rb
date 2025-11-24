cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-24"
  sha256 arm:   "76da65c382f932b465ba5ae3a95e56067420baeaedeef330e31329b0e4de937d",
         intel: "0e743ae2ff9dd6c86e600cd47aafe9308405606e65ea31b8472ac6fd79b0a04c"

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
