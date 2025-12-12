cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-12"
  sha256 arm:   "aae4e41a5ec8210a55f92ac0e96ad671dc26613f5087bcd7e79632b68498eed8",
         intel: "208adc4c3f1b7835e437da14385f6c9155c38dd6ec4a10761e6237cb330aced2"

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
