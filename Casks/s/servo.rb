cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-29"
  sha256 arm:   "d38f757712f97df647c14f73889640d9a01669a30e00f5b99fef79958766c41c",
         intel: "4943120230c51b9ee9967ab4420c828b0bc2a26e6b3195fba1e08d5c5db9970b"

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
