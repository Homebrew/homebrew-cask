cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-30"
  sha256 arm:   "ee2ce24c395ec09a5771deae782ff126216d8469aa1175042846b1bb65c6b6ae",
         intel: "139874de68e4b45c869207c9aede8e41a93f264978ae131174ea7ce81b71b55c"

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
