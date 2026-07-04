cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-03"
  sha256 arm:   "b2d3795814b7469ff8263b6cbb25768ad3a0a963ee897ae572a8fbf1d283c002",
         intel: "3bbbf2bb1504ff05742420744df76e9248733e7bbc39227bc38502df5568e5a4"

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
