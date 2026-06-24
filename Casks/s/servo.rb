cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-23"
  sha256 arm:   "bbeb3b3487aec055e2527a3d22405c038cb0aa7afd52a404c33a82698937eee4",
         intel: "1e1198b991365dc931572dcd7f79e3eb72ccf4652f1a22b270d937d91dbb0738"

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
