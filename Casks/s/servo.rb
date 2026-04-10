cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-09"
  sha256 arm:   "37e776ffd11b23d4a5636a95632044cfdb57a81f71212233b8ee2fda9affffd4",
         intel: "6491256668971c42c9159ca236d06711c369606833b098a4231956da378481b8"

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
