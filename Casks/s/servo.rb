cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-10"
  sha256 arm:   "74a0674344dd603558775fd084479370152f4e0a5c56b95c15fcc0be3e4b7f24",
         intel: "41196130c294cf9a306bf7ba7c39839b050f9f650aa9397a38145dde60faa1d3"

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
