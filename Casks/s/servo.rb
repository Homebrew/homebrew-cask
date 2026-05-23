cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-22"
  sha256 arm:   "77d77414ce989ce2ca517897b98784c695acbe72d2433a40a29fb58f368de322",
         intel: "2557ed8271cd4ffedcb91886171e9d55a41140893a5c02af2f52d7c2e0d2cd6d"

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
