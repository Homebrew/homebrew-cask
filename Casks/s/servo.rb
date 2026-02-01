cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-01"
  sha256 arm:   "1a68d33d9f86199320b44c43d5ff159ce5f1cd6f9358fe1a8941051ac7340154",
         intel: "f6a1dd212aecd1765291da295e53ce70a2f25d615c123e68da1c189fa47c438a"

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
