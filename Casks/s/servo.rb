cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-26"
  sha256 arm:   "6c5e9b14ea1de4af6fe49d90e406a0599056ab2aff11e2b6e8f67093df23eb94",
         intel: "4b8b116812be12c452e3f0fdbf4743db55d575d2f8d5416bb34fd476d5e9b49d"

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
