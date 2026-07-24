cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-23"
  sha256 arm:   "825c4f78efee11be3493e70b06917584f0d21bd6695ac5392ef36d23a113effa",
         intel: "aa1ae9aec30ad44294f052547aadc48db2c441f04a509aff56a8f374e2ff7965"

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
