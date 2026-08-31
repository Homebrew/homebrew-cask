cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-30"
  sha256 arm:   "306c27f20bb3f3833a97070baae087b77c88ad5318b8975531e4ee7c576f32f0",
         intel: "ed721a34485bd59171d8c62c959cb485bc7a7c627e348da32f860c0d8b311aa7"

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
