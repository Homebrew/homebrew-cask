cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-02"
  sha256 arm:   "850cdf55dc01ad4b8bc09482f8125df48aee5794efe52b95ac0e7e0e5d64848e",
         intel: "eebc4a8a6cdd3dbf536eac390d85d89bc4cc8af007f95672fefc556fcd1c72f9"

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
