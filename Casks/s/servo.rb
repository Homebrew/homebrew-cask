cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-09"
  sha256 arm:   "99312c26aa45473a2a5d277854f47c87be5f8b87042464a0de6b72533b08cb80",
         intel: "67ac7d6333c228cf42df3cb7b3b35e3cf18acbe6ad219d3f5e6f6d29eafc8a30"

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
