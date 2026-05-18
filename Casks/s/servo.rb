cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-17"
  sha256 arm:   "9fa7aa665c8f3c54c2ea0379c6159a38bb83dc0d98169f3d88d1c71bc0296262",
         intel: "e7265980bd45902bad0b39dc46f2eea50e720a078b508e78755cb56dc7609c23"

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
