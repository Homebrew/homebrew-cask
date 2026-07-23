cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-22"
  sha256 arm:   "283d6cffda168e3a7e14a6ac5430633c744de95c2ac222eb8c2640775d6a0a8c",
         intel: "6e89bc66b56bdcd09cb5e4161d57afea2af85ad25a8b4bf852b5f7c867e72262"

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
