cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-08"
  sha256 arm:   "f9378b7152af66f4776a2093e6f077c0cf54106f16cf2e766681f254f35fb211",
         intel: "e170f5670cc234c687a50d6f4ed8c6da32e2a4e850e02df3f749a36a41f73235"

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
