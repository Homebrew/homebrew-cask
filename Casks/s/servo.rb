cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-12"
  sha256 arm:   "0a251cfcf8b80ffc6ee1f54dd47f8f73660599985ba03872d1a95d16994f0d97",
         intel: "1d3cb2ca1e10895f191d283f20d7f015987ddf49cef497cf66c1bd976cb02e48"

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
