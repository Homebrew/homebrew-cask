cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-06"
  sha256 arm:   "25495ad76b11cca11daf73bc475b68c9c4e58b3d27445df9330087b8aa913481",
         intel: "74f9a0b61de5c0d604465e5f321f50d88ef7c14e3457aa4e275752468dd62ab9"

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
