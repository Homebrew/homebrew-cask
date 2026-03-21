cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-20"
  sha256 arm:   "524e0e0449b88bbcae0dbdf61ebbf3d99114288b1e567b4723ff914f1f06b723",
         intel: "a2f14c7c63fb566009f105a508916271f84455b5c0466a12f64e2073816b5da8"

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
