cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-12"
  sha256 arm:   "672536a71a96efdddf6abe9752fbabb9f9724a0009690594511c78924026c376",
         intel: "fee89109a4b7c028bb25549cca9dafa69aa7f8ef287c9da2eac6825b9d4df6b4"

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
