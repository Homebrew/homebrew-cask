cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-11"
  sha256 arm:   "3a17334765943339f7130a0d1f4f9faa906d9fbb143814679a83515004faa05c",
         intel: "182626b46283a5f3c5c977fa454e8698879737a1220cc397262f8bda401ad780"

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
