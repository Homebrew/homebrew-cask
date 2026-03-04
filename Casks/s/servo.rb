cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-03"
  sha256 arm:   "703f31af76f00b56d48668c9fc7baa12f42a10d0baa79883e4e7218b8927dd6c",
         intel: "b74404b74c5ad48042ff7a899e69230854bb2af91d721674d5065d4123ff9ee5"

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
