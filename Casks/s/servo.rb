cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-13"
  sha256 arm:   "f72d9bbf7da69e7d64748eb7575a1eb2b83ac124ae7f066071b7ae0d14d8c0a6",
         intel: "1a727758d3dc289a3615474b617f293ca7a0b44ad55ad57be6438bd53381d59e"

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
