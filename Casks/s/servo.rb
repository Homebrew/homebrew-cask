cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-30"
  sha256 arm:   "f63eaf5aaa061140b0fa874768577fb8f4d531d521546b2812645842ade06f4f",
         intel: "8b2b1f5358442af9abb7387276c25e8aefb20ed86ccc2cee48df17d8c3147225"

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
