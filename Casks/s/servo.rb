cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-14"
  sha256 arm:   "6d86a0862290e265e8cec5e3a1c6fc378ac232026dd76afbe123be3990c1a0c9",
         intel: "59b1e48980ad4f7619c67ae19a2fa41ce10953b0a5bc73f1307f887ef3bcf6a6"

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
