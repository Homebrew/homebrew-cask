cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-28"
  sha256 arm:   "2605969d7d187b0c6c941e80d15369c05facf791b2604a40251fa7018e6ac442",
         intel: "1d580f8c813506d8c74a720f1c9409efd76c132337db30bfdb468b9f59f12307"

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
