cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-17"
  sha256 arm:   "79d524a347f98262b586e9f6d17de520a6f599c2fe20d8623168f1e3355c0843",
         intel: "15c60a5cbbe7c521ce3464551d21071d39eb0c62a2931f3aeea72db2485fa840"

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
