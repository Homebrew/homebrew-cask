cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-22"
  sha256 arm:   "4f6b725b62fe33b13a7b5bc91a32ef63e9246ff0bcbf575003c5a72387064b45",
         intel: "347da587f2b30ceadc17ddf801b8f5799a84d7144d2614b0f7d47c728f57b2e3"

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
