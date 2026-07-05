cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-04"
  sha256 arm:   "1b421e4acf681282b6079356a36f75223d63afef99621f58e0bc8f9ea35e9373",
         intel: "20e25a540fbd68064e5b1f8c9ba44165574ec215ac1cfe185430cfa7666869b5"

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
