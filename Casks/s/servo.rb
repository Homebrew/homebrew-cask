cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-10"
  sha256 arm:   "00f93fd7983ab662f52dac4cb828127c839a263275d1c59d2a5c3e4be31c7ed7",
         intel: "42c7f7e6f6a391070d2bf2fc5eea586bbc79e82fd7d7266809006796bdbab980"

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
