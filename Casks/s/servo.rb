cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-19"
  sha256 arm:   "b9c86c335dab3a6f937141367a7f563185c7de6f44c239bc51722ce818499d2f",
         intel: "992ead1d148d6266346325de9d2437a431d57d877f37691e38ffe6b9e0996103"

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
