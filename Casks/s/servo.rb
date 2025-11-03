cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-03"
  sha256 arm:   "c2d616c406dcb9ae08c260d367712c67ee811bea4819aa3364fc451f08b5ca08",
         intel: "4c5383c35fca4080058d5ba9e08004db36adef7159cce3b5a08add2787980b4c"

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
