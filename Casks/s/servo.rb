cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-18"
  sha256 arm:   "f1c5c1f04902523e07f7b63ee2088fd06f2fb61f5c0c96e7d8f799e943955cfd",
         intel: "82a9a14d70eecbc682ad58440897d3f977c6b7e61764d8ece8ad5905192ca3c1"

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
