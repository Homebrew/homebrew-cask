cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-26"
  sha256 arm:   "1109f9c85ffa5db451cc5292f4799e2d7bca10a356f6db485a29c2ad5a90a2c4",
         intel: "cf34a14b257229e11003d16dc13b57007dffa3cf5beecafeeefb5b987207254f"

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
