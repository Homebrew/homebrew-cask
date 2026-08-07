cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-07"
  sha256 arm:   "85f846a6792db29f2d696491129b2450742215ab56774b906465e53e72f83fe8",
         intel: "9ceeba8b54ce456949ac9dd0d7dbbc519f428d9e4c178be5de4e0cac4c59133e"

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
