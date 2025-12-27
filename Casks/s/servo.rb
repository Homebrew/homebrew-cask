cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-27"
  sha256 arm:   "77448d7b56e6934d4cf1b82525bf0095538812e4f1de70728d43f59128010e77",
         intel: "e0294f3eb04ac4e209ae7d59c92aad750b9b13d6d75c01416b6f2b9240d65700"

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

  depends_on macos: ">= :ventura"

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
