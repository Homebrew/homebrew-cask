cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-12"
  sha256 arm:   "299bd8a2f0dc775745b9fbbc77c369beb6732f486a11c1f6b0b34c517b634f2c",
         intel: "8aee6524a509e0361352a5ca9fd5781ea367b8b556f306cd9401c45ef2314630"

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
