cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-07"
  sha256 arm:   "3019c2197a07cf8eaa1a71728799adb3de8d7b45c4b4160d6b6aba40a7f713fa",
         intel: "9084d8cd02d05d1732630b667b652c3a4a9ed527ed0fecddcf346a82a607d25c"

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
