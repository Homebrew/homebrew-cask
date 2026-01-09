cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-09"
  sha256 arm:   "d970d346528eef22b4b73eb324604560be1f0c0bb8b6729c6f36ce32ce22d21c",
         intel: "a39e0d1312ee979d917fbdf4bd259e8a0c73a38ab24779fb869ce8474f388303"

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
