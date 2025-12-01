cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-01"
  sha256 arm:   "5bb9ece9e451e248bca4e641cc93174ade087fbb1dde13cb10ec94f5f6d7d905",
         intel: "245708682afaf5dab79d6c2a1f27f683ffd4f0adc3d78e3ca3a8d3c5ab8292f1"

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
