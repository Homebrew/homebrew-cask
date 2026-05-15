cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-14"
  sha256 arm:   "6ef07b71ec909d0b232a1803b70667ac3f6b7913e53a6b3f79d270ab21329cb9",
         intel: "3beaffb1559539a7c1e3c94bb6f2bba9716fa23a28b44a5c9c19f595078a511d"

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
