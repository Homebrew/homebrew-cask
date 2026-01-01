cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-01"
  sha256 arm:   "d120558e84f588d9a805e125bfe51ae4a954d9a28b287bcaab22906bffe80107",
         intel: "7c5699d1338aaacee80d4a0ba5b1ab304b86dfe4ce6ffd1e3a469f18643766e0"

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
