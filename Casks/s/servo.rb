cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-28"
  sha256 arm:   "ae71a80c64bae155449acf1bc5e78a0a4edd5a04efe43a1d64014ecefc11ab9f",
         intel: "325b6b7cc8b88d0ace56282879801f476e3e156dab77fdb55fd0e79b62875568"

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
