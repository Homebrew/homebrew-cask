cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-30"
  sha256 arm:   "bc27963a9481d235e2f2689285eeaa9ad297ffeaa2591d3ace8603d2aac7890b",
         intel: "28ec99e7d0c2f6e793ffe0331b6ae41e04628f54502d73c51afbca2461bde245"

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
