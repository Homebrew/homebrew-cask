cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-08"
  sha256 arm:   "9f9047594ef8c254e2b323316254061181b139b606ce1111efeaf5ecb4be7d24",
         intel: "b7cac8c4ca22c75e9b203f156db907d1eeca0538c02dcd1b94a4388c94e3579c"

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
