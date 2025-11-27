cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-27"
  sha256 arm:   "4c23f3e7a08a67434b5ae86e99e1b194ebb2475bc7964657f7975653c342c663",
         intel: "15346f8190942265f9aa4cb9555a61d35354cdaa91a8aba82dfa9fd66508df44"

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
