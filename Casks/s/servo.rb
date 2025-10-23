cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-23"
  sha256 arm:   "d64f459d87a3fb0db9ea4d50d62f6b9abf1aac3cab7390105949f03d655d67b7",
         intel: "0c92ac3c745cd0a99c92029715148a49f3b294de8d569533c765908c9586acae"

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
