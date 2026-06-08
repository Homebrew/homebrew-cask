cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-07"
  sha256 arm:   "8ab0e6726032627acfe5456f4c39fd0df36e6603e4a075ca78f95eb36bf3a8d0",
         intel: "d62090fe610c0dfc653354d5aa62b0650ca7eb88d38ae64d9b915f130ddb4a55"

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

  depends_on macos: :ventura

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
