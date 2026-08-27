cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-26"
  sha256 arm:   "d8e6f55ad044954b7fa9b62ddc9743c9680616cb81b80ba15510e90e0c3342da",
         intel: "c5654e1dac53f386a4318784ca11d59606d16f0241815e9459779c8b8300cbc3"

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
