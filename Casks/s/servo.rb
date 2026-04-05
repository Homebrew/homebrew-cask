cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-04"
  sha256 arm:   "aa412ee7399acffcd2995964776d4f2447ac79851c1556128a42a042eb3ad30b",
         intel: "36b5fecea504efb41541ed227c425bda359101c14cbb397c9d0c5cf39430a017"

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
