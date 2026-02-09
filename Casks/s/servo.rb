cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-09"
  sha256 arm:   "c15974a043a1dfbcc12aa71bc73f314800b84c3566c5b3d98f7be66914e55735",
         intel: "1d93192b0c28baff9af2ef922497880557a8f52449c7ac11cabc50feb36cff0d"

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
