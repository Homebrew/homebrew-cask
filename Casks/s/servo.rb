cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-16"
  sha256 arm:   "de1eaa59be5b2e52e0acd8329e90aabc0228459636a4d6ea312e84d62e776de0",
         intel: "615b9e1bc847cc7416a025643060b2e8d1487d08b09177be77293c9ad8b0057a"

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
