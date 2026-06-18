cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-17"
  sha256 arm:   "67586152fe51b9dca3a9566dbcee53e161d0f5abd1d9ae985e1f1ef1f3a89f9c",
         intel: "d2b54b1efd4beb8154e105dfe6dc42a50b732d2a2b0729551a0f043c306ded6c"

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
