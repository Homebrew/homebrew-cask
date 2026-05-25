cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-24"
  sha256 arm:   "9c6b57ee4d966c3ed065519a847f226cbf4a12ab1d87e8c9e553d3900997316b",
         intel: "d0a10c69facf8e6f42072efa511a01ddd5a9aabae547f2ef7c396516374e9269"

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
