cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-13"
  sha256 arm:   "fd723e99c8c1a6209ba8f2e300ee5efbd370d6237c1e3c7d1dc1db47231067a5",
         intel: "1772c5a070fd5a24b330270389d17bfae90e658729382b98a5c617e91475223a"

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
