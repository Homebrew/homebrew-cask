cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-01"
  sha256 arm:   "707cc5554496bcf409c2b942ef694e6ad5be8bc9e64d9e14cc629d50a4eba51b",
         intel: "9d9edab28eaa33b89911c5805d6e133da8eb74859d05857314a132b7168c325e"

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
