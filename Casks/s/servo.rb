cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-11"
  sha256 arm:   "7fff804618f6a1c9eccebbabd77be1aeb7cad4050b58000e3bbfe80f9cefcc44",
         intel: "77f8641aa119050ac56198fbe5f5d15953a4ddb5971ceaa5e08bdcba37657aa3"

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
