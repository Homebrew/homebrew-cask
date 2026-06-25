cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-24"
  sha256 arm:   "c8b316eb078fd194874a057fb1a95b797be55c3f7a241f34ba7154ad69cf2ac0",
         intel: "e6224f2ad5bdc6efd1a57938653871ecfd747df01221260c1f8f3a1c18e85a57"

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
