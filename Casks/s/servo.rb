cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-22"
  sha256 arm:   "59b20bc5aeee5d8aa153ed7fd49a5bbe6299c3c009f90de15927212690f0a0c0",
         intel: "81eff906b113af496a680a1d83d305f77f141bedfad3b6ecdaddc8525fd86e6b"

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
