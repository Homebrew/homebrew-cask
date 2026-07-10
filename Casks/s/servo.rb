cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-09"
  sha256 arm:   "73e5b249831cfa7f66e0084fc65df8f8931ccd9aaa31ba7084f088bd92bec14f",
         intel: "33a1ba8599ac69ec055748919e3167d17e8151307dbc6462896c5a4414e31943"

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
