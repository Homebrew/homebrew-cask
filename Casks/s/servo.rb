cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-12"
  sha256 arm:   "1ba5bfb8883389373b7410cb97f8597a1ad8ad2a5a8d5ee3530750dcce5213cb",
         intel: "b09106bf382a8b23759870f9f3d42602d1871694508552eef65c87fa82e92952"

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
