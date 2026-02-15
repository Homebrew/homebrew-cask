cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-15"
  sha256 arm:   "f237ac4bdee281952e745dc94973feafcce066f92c9667b488d14d10595e1bc7",
         intel: "b9aa845262b42e56e027eecbedc86497b77911289f4afd418d6b46a81f4919f7"

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
