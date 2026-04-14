cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-13"
  sha256 arm:   "191f4dcffec7d49afc8c7afe96deaef97570729f54063a27cc3e4733cd8a8703",
         intel: "98f04c95397e1012568a9994c41d61cc146a935ba4c03dc0a87dc8d5eb09ea00"

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
