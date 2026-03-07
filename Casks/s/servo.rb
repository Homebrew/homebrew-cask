cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-06"
  sha256 arm:   "68311b16cac23a62f8b33381c2dbadafd7b871532d644c0da9563abb099d4968",
         intel: "a3eaac5db006d33d3b8b72a783b6ac4ab53ccfd9ad2515ef4709104e1e115766"

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
