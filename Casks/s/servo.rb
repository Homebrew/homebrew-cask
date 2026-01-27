cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-27"
  sha256 arm:   "f6d2245f0e831e8b39539a7db3647ee2ff7cbe1c53c8e90a74ebfcdb756590af",
         intel: "5a1d619e4528e8264adbe42475a366e9ae88914cefd5eabd61d3b8f85f7a22c8"

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
