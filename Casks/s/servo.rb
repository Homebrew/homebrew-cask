cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-14"
  sha256 arm:   "df6f0e555adda707cb48c3031f6b7ef906e8b120494e5b0ccbb00ff8493e9cd8",
         intel: "64ec3ad5c5577434fad42afb57ff7f9451a37d6d304993a2ec04d7ebae00f254"

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
