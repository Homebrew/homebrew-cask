cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-14"
  sha256 arm:   "efebc642f5e8fd7ca01fb66e4138bcf8bbf3b1163a37eac8ad6b5203241281d1",
         intel: "4ff8d0576c66d8f871cd195e364bb29705d9df374cf2d7dc59137dde7de1ef0e"

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
