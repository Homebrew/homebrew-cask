cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-04"
  sha256 arm:   "8c97cbc2df06688ea56e438d3bd1b9ec00c8c907edf7b973fc1e7b87e6a821aa",
         intel: "96780af9d356db4b1f4101e4301a24fa871c1044cf210ad7b88cfac1748647ad"

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
