cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-03"
  sha256 arm:   "7935f1e5cdeb526f87394d1d280c580abc7cc1bb384f554b689bde30639dea3e",
         intel: "ba44422b57ae5f6f8b2f0b83b978c8b0c1cdf34110bd7a5478baa12ffdc1c3e5"

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
