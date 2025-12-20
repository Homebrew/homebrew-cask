cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-20"
  sha256 arm:   "b25593784e3a60019a8158789609a2c80f2651749378e7acdaa8cba3105f3e8f",
         intel: "cde956a981a385b07a409ad09673acccfc57aa614cbab6377605fcae8dcc7a6d"

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
