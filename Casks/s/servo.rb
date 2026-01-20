cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-20"
  sha256 arm:   "7bf0523881e1edfd910f8b3d523307588356b2f4f558373b4a44fc79b13a197f",
         intel: "f4d3d91b918e600e6d88433480efe17101d8af9a1bf918d2c000d08cf77ec0a4"

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
