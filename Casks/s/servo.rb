cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-26"
  sha256 arm:   "fd9b6abf7426040ea9a29a6a8237360287c60019fb8f7040f7e9da5da37b6456",
         intel: "b976fbf13ead1efdf8f32d84abd81b57e5a968851f1fde1f671cdfacfb678489"

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
