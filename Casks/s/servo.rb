cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-16"
  sha256 arm:   "3d23b8c5aaeebbbb0468d778f4eaa45ae2cdea96fdc0bfe26d1e72afa5d8d6c3",
         intel: "26a69722b0d9c534216623802375a83ee34d9e25144eac776646129d0c2231ab"

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
