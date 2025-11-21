cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-21"
  sha256 arm:   "0817556aae8c6bfca71dba3442caf0d5df98797561c225de81cc507512b9c205",
         intel: "e4b30f34af9c08b87e510c339eaf3dc92b44129c4eda282888d9c8422e82c40f"

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
