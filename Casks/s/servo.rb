cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-08"
  sha256 arm:   "479204fca63e8d677c20162443e25ddddc949626a0e4ebd380e36aebe4b5767d",
         intel: "5597b393a88aed7650c8a291b74e4219c201a08c62cb10330bdfae32472e7895"

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
