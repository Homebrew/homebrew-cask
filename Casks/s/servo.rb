cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-15"
  sha256 arm:   "1711d852c6ad0b347b1175bf8f8b2baf6fe02e81a6d3096061c38ad6e345c3f5",
         intel: "318e80b37466b275fec5878dc6f1ea330c64f33198bd4652be194da788d88940"

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
