cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-04"
  sha256 arm:   "7b94b50b0d3ec810c21690bff5422c3c6e09bb3b6d3ea3eaeb7073d1923f8989",
         intel: "e2c18af3aace2376cfd291ccf38fff9ff4a407fffed053cfbd1d32aede03aa46"

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
