cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-02"
  sha256 arm:   "090f2ca723b1f306395316a70f0baea2b58ab8cf8a3f122b52feb01858089a2e",
         intel: "cc3e50f101f11e0bc1242fdf2ea0cdb8728dd92313af98a3bba60c4dd941441b"

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
