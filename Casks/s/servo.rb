cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-25"
  sha256 arm:   "1b3bde047afeebaa0eebeb863bbb7c93edb0bc5d34ed514c8eec2a8514672aee",
         intel: "689bc407cf22b303188443422ad09d8130ffa9bd31fff4ac0e3bd67cd490c9de"

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
