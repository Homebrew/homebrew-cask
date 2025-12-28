cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-28"
  sha256 arm:   "273656da398f5fa65c9a80bcd4ae2c35b200703117198f6c8e8d529f4516a168",
         intel: "22f503206b28ccebd6c34cbb50c25af8f3cdd2d9180df1d3c10e65df7e01f9ff"

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
