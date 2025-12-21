cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-21"
  sha256 arm:   "b755a4a7e7a0ea3961be73ea3d775be8c5d643fd8f0d5387aea9f7c3f7793f73",
         intel: "d819bfe562b4e5db99a4cb733566335d1ec924d576251a0392ad396f86c6fba0"

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
