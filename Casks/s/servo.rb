cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-06"
  sha256 arm:   "b0fb25f1d68485987c8af9ad0684735d4c8293b1b169b954421bb94e02370260",
         intel: "08eb33a96a5c51d681fb16ec83fe4052c050ffb677c8fb87c96eb033b07db9b1"

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
