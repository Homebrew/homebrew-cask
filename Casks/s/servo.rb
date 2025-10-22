cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-22"
  sha256 arm:   "e03e89662382070f54e48cf153c72e5bb2c08b2262c00c04912277df71b51cfc",
         intel: "92e491da9ae735259ed964c3f3b2caa8b49d3907953a6250479a37d373d03a19"

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
