cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-15"
  sha256 arm:   "2e45d5f9817bb95076e324aebd751c5e79b7e19589440236a289daf7b870b20b",
         intel: "0faa3d7ad166722c45e076be72c371467b1d7dd5b7899c49bf08a8b603dfca96"

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
