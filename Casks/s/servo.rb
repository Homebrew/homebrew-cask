cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-20"
  sha256 arm:   "cad979fdcd452e13952758806894e2271d84484189023686cd269f68033ebd2d",
         intel: "00c63de103fa88e6355a8215ba6118d0502119298719cf93e329b877be856e96"

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
