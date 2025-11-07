cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-07"
  sha256 arm:   "6967d4d558b81feef3265857a79abb96e3b000496958781f5d4fa2b318e31325",
         intel: "ff012220678176a961164550391cafd02b76ec3b4e53c1be3a9de91cb77a50d3"

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
