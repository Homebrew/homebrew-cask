cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-24"
  sha256 arm:   "f9fce4919d15c3d41f419817e29c9453c491227ce5706872918d4bfa87c17f5c",
         intel: "76c2246e271e03ed731b92abd2ddc085914ff79fc25d44ec4c977225de7584e3"

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
