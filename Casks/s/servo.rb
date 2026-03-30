cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-29"
  sha256 arm:   "247f89fec7e6d57c0af80bbe8c811e2007dc80c6688b1baa811e583bda418d2d",
         intel: "e0abb998c2a6e0c261ae06060d26e6554de76c922d91e8636cd93485d152a6ab"

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
