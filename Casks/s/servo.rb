cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-23"
  sha256 arm:   "76d8597ab5cb33953d1e1e7058e7f44a10b9b6d7d955d35935d73ddcaa0421a1",
         intel: "c79b1874e269594c7bf2fe8f2db822c5ab4bd2c8282441203b5930fb337443c4"

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
