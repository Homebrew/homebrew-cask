cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-29"
  sha256 arm:   "fbe40230f969d667d5916b826cd6f8f71b42dd46bf2e2025fd9fba247bc4ce79",
         intel: "2f1fa17818c42645fc4457fe297a6e5b3165568c81ed646a05860dbd8ef9654b"

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
