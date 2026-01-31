cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-31"
  sha256 arm:   "faf99b6788055d82a20662a4fc04daad4065d7bb5e9103aa04fec57cb37b6b99",
         intel: "520118551ac2d4d89640e741734c0b7fd18e51bf02b7c5fd309fb10ecaa61fe1"

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
