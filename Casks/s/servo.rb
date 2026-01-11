cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-11"
  sha256 arm:   "c36c25e598df6515f73e90c0cf453d56d12e7f587a2da75cf70b3104ed2357a3",
         intel: "612ca75bef02b31432ae9f8565fa8463868dab4449dc29f1fa5a50511af3e293"

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
