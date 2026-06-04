cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-03"
  sha256 arm:   "4551f6d4174cd40b142256b2c72d3eaa1a6707bf385586ffcf5c8751b5596c6d",
         intel: "0eae45e78fc1c1f4da5a5933b7601a05dd9b49d054411d5a71552499577f372a"

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
