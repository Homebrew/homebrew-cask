cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-31"
  sha256 arm:   "46fc8b8f567c29c56eb59d0bd7a0cd3e7dfae8db563434338cb44202b6e95c26",
         intel: "1d97d8f39e6e7986ed3196366f4e3c34e911041a6af96cf9d9a6cab8eeb400cc"

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
