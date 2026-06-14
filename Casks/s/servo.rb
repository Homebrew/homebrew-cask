cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-13"
  sha256 arm:   "89b2aa3fffa30bfcd488c47fd0ecc538520a93ff038b844d0bab3f38b41faf2f",
         intel: "04f34a7470d4ae7ed54e1291f4f0a45c5d589db199c8198353bae7db802cf5d1"

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
