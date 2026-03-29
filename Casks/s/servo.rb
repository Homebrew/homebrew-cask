cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-28"
  sha256 arm:   "8c5cc99a94a0a154c94a027b8eadddef86a87b313cbb4d177d6cd19c9c6d5704",
         intel: "ab400bae67be9d7d3eaff8c74220ae9f671ead98ce3aa29081eaffccbf86fad7"

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
