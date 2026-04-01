cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-31"
  sha256 arm:   "b2293a5d4a0e22f67c7e8e3ab10267a2f64451f7958e8a49e767bd0f9a867a47",
         intel: "c53efd1c34c1a79c236ebf5a697a6f8a60aaf7c2dc2b94ac675c8d2a4432c748"

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
