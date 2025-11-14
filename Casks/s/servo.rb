cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-14"
  sha256 arm:   "d52b46858807aa82bbea8a8185b451fd7a359697cca4fd7a73fa63b72e55c8ee",
         intel: "e6fc4950aeff1756d9155b08d9307da6696760d43aac334ac2d250ac7d5c1ac6"

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
