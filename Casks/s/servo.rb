cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-17"
  sha256 arm:   "0f3384a380bff449e98be292401c57ee8f518c40a2652825eb3e0ef261c349b0",
         intel: "439f4a2caf915c1857ec8e26a3834e487329f5516e303c5c87640491f141f3cc"

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
