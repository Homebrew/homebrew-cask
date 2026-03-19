cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-18"
  sha256 arm:   "ab287612fdb11f134eb8de70506d43e6a70a547f69bb1079ab950f26daa3e948",
         intel: "5a10c5ebfe05e7f3706d9859240e8a809ce5cab2742385d856375b4cdb9fbb6e"

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
