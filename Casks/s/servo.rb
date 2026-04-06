cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-05"
  sha256 arm:   "7b15a6ffc5b782ac02e0397eeec641efde65018abaaa5f7f3d698448433adc29",
         intel: "aea975a1e904435b666273c8ffec1c2d22caddd8ae1aabbe9e283e40f08dca3b"

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
