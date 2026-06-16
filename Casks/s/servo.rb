cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-15"
  sha256 arm:   "8de2caf427a9eee780346fa01394a4a86561fcaee818ea6f4a1503774a890a1a",
         intel: "8ad21fc831c9b1d589072f1e1991514355e6c1efd3ad285a4a9e369defc7567f"

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
