cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-19"
  sha256 arm:   "75a68e25d4dbbeb029360197265320c45114985c4fa9c76467950759b0ad38e6",
         intel: "dd27361fae7f2b140c3cad51a6cdf6550c9941b554a28b2e7452b0369bb6c53c"

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
