cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-10"
  sha256 arm:   "15b4cf35387e6249c5a38a0637db5ffd6292b87ae3b2de350192dde56208c3a6",
         intel: "53b85d9d05b2ed5634a319ed6d0d7b01d2df80b4e5ece09369585cda3fed447c"

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
