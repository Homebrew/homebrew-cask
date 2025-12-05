cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-05"
  sha256 arm:   "119f6abaf9d4f6cececeee347155625856af8b1a7d17bf7bf296df7bcd82bd15",
         intel: "99ce0bc5ff7557a0cf0d9b751914a6940eaaee017d9b827448b9871042278793"

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
