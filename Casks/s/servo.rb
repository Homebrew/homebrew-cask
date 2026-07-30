cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-29"
  sha256 arm:   "256170a78ab42a11e3e100354688617420361af2f6c851d9ec5e75b58b8b9e26",
         intel: "68db726dea33dc71d67afe994330d7f273a7d249fc79ac07a36354e38389dffe"

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
