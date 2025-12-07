cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-07"
  sha256 arm:   "c9540a2bccc4e63ad953d108e6407752a44f02a861f5d4d93264605506b37d0d",
         intel: "ce7181b9cc1dd23186370cb6e7eab6793631476e3b79608f98b7be5e36f6805b"

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
