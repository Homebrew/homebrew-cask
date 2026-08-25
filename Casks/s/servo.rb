cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-24"
  sha256 arm:   "c3b30e3b60facf01650a2727dc580f741c52baac016e66d73fbec5dad28856bc",
         intel: "87908cc610b6fa3e9ad6ebe1303405724e4dbc74ca94806046150215b5d9e543"

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
