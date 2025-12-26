cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-26"
  sha256 arm:   "3f8979db9c61f57f6be009ea5b184cc29fcff64c4f8d390ef9cca4fc2249070d",
         intel: "247c096f956b41d6144884f1c67d0834fd25cbb7d2ca76f03ae9be8f05395977"

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
