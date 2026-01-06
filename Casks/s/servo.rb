cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-06"
  sha256 arm:   "7d28a3adf68f572782ddfdc30b1a439423d6abd2c449f82b7c409d059630955b",
         intel: "f83d365161fbc1a792386e5c346343f1b709c139dbdae2bc2c90271e75ffc658"

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
