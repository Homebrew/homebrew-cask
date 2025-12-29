cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-29"
  sha256 arm:   "123c5f8c20bb0b02e844e3a927e84dfa8e76ef68ee929242b1d17e59647834da",
         intel: "d65859d2f8280125fd0bc297f7b25dc024059117a4cabff6a425dd828f59bd2c"

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
