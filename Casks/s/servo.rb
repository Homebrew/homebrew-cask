cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-09"
  sha256 arm:   "bd5aea19391828af25c08e208e6e98b3d23861eae351f2e403c8c46b315860d2",
         intel: "ff7c0fc34a07642cd50bbfa2536c9c44103f2f0b5b56583b7104105770be8739"

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
