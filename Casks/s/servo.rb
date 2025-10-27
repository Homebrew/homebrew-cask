cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-27"
  sha256 arm:   "adaac0bfa758fed35f0327829adbbeb9296594e25b4f9a5ab5c959aa8e686198",
         intel: "880735c80dd3204966fe8a747a5fecd3d074a8935703609757cf232e29ac10ed"

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
