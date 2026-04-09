cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-08"
  sha256 arm:   "db7d9b0f9e145308977a1684d1f1f4a96d6d5fe5e61dd5ccf22c72ba26ce7dbf",
         intel: "cdfc430fb0770bbe1058567c23bed5aa369581746e0f91f6a3434fc91321ed5b"

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
