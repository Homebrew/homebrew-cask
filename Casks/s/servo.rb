cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-11"
  sha256 arm:   "572b07a045527ee05e5d098ad21f28fc4f6cddb9388032ae666358ce38f8ebf5",
         intel: "1a6875c62310f76acb490316f66994c8a0e3aa3ad80fcadde6adce76fcff23b8"

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
