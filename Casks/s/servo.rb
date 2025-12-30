cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-30"
  sha256 arm:   "0f0f30322075ba4d97845d2c7623e05716421947d85530c091c940bf476cbf42",
         intel: "a79fb87304daa6c09fe09f3cf4d500919d3fb7293c2dcdbcd136ffaed27cc4fd"

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
