cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-24"
  sha256 arm:   "29098edc75457bf611160dc7ef0c1b63aeed72eec4d6e3faa5a95970ced3a50f",
         intel: "b86ffb6de2321dd828cacb9ddbcb2ddd121e124cbe96d5d81e2647c5611d1d71"

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
