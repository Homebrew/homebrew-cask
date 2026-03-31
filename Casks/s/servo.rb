cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-30"
  sha256 arm:   "4ae50ee4b1981c9bc91b7a22d5e300f6494a69c2759240c24472161892211d4a",
         intel: "c5e0695724ab3b7b1833129596d4b2b0622029a6cb06bc0239482a1d29b80f0f"

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
