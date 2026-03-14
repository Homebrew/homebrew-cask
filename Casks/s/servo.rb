cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-13"
  sha256 arm:   "5dad9b1f6eef43b66c8c591fc420293e651482918a9556a494092a51c54b3f05",
         intel: "a1cee9cca929f78bd79b8124870b0d3dfce5b0c05b1bb29093222d962cffb7a5"

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
