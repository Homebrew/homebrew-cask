cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-12"
  sha256 arm:   "0eaceefdb58a0f4dfa4f8a373c1db8b6d4254ec9fdc9b0aeeb6fe2931a761c8b",
         intel: "f9f0fefa6e5c6e976e2e95973a4b3aafc868ae91bc7f7dafde3f70d16fe947c5"

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
