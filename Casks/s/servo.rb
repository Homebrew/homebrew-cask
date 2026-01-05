cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-05"
  sha256 arm:   "0c1cdfe0b4d9c32c9278b809300a05cfb8213ec50f2673fd6b582c7821df07e8",
         intel: "da7cbef4ccec32f066656e77bfa12122182dc7522b39e4558127248925549077"

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
