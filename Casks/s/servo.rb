cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-24"
  sha256 arm:   "6095adac470107ee2dbeb09717bdaad5f0dc6ce7f8b73d02762785eaff58286e",
         intel: "87f4994abbd20d2afc260974ebd940a6ce97f73642c265368c2035cf8fae105e"

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
