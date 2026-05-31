cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-30"
  sha256 arm:   "909853793954d95541edf351df69187e13936980ba2bf125ad3f9636936844a2",
         intel: "efc3d5a41024bd14903016eb3e54d42b4b2bf9c1156324272d7cf68e15346ca9"

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
