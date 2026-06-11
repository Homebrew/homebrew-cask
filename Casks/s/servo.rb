cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-10"
  sha256 arm:   "c53e0e9a98b4695afd1dbc1fb6378af0a73982e8fb57d377ec790a7b8d733ce0",
         intel: "86bfc16f078cf208b7cd80fefb695ae15017109d69696e994c31216db0f1640d"

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
