cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-16"
  sha256 arm:   "e9853743b0e29f62ddc09e856b8b44256095484e0cde95800ed78e8719e19a7e",
         intel: "5e14acc1bb09702666f7e76657e36b7fca29ad71f6d854dbc0cfef537f5637ec"

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
