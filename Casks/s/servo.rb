cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-31"
  sha256 arm:   "1f5dd2b06186a701654763d0df61d436c462fff0f112e9338b0767091c584c40",
         intel: "f508599c421334e983a69e2837f2b8d018cc1b1c2ff734be353f744494302061"

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

  depends_on macos: :ventura

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"
end
