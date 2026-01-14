cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-14"
  sha256 arm:   "e9d7da851f79d941afb4db03c0e155d64105d061282c94975ae2bb034424a011",
         intel: "6a04be0f9950ff667ba4a268805e94b161f5193b4af50cc6bc2ffa0405d2e2c4"

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
