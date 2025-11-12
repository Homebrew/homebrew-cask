cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-12"
  sha256 arm:   "c358c2d813d5a3a2ecde5259abcc59a5e0886cd6c97e8215669cd78587b80515",
         intel: "a27a44b5c0160841940463d504396b45dc2cd4a3f5a442a46cd929143700cc4a"

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
