cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-01"
  sha256 arm:   "2cb649d8ed2fd8ceb1de7ac4d53abf3db2f13d2b203198c3c886d6de0366711b",
         intel: "1b823ffa79eb269b67586a5e8e5a85ad02603b224f686fc7d694b279e954bdc6"

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
