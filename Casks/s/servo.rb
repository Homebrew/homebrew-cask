cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-29"
  sha256 arm:   "fc8b6994b5a62f5f5ede2ca3cdd1def760f5ea325b22183d51c225e71fb8428c",
         intel: "3e7d16eeed1e720e81f9d0d0259ca8c848a8ffff6c1c10aa1714ce8a7814541d"

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
