cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-13"
  sha256 arm:   "b888b1e4d29b043894ea8ce51a3045a93ed3bc54b13c08b5bb29cc0be71baf66",
         intel: "186692020a5b40d7fb7497c0ba1b08750eacd59a71b874447e71d70c13859d2d"

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
