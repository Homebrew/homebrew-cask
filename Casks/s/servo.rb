cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-25"
  sha256 arm:   "c20e217a3162132ce98dba863e8829fa647f2dd9a2304512368637832b5e4675",
         intel: "990d1a8e9a3feecc346c54358bd088c63039d06ef8d6de236a20e8dd42085d96"

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
