cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-17"
  sha256 arm:   "58973f5f618f310873e492632260ccd1b8b9a5187bd595eabb2fe9a969a59542",
         intel: "51c146e555aabac133990316998d6b7980ef2c0e8945ff212cdd0787d4601bb5"

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
