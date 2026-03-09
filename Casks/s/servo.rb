cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-08"
  sha256 arm:   "8992e0e3c1f768bdc4aa3190e761da3ea1b7bd16ba251f9128809042fd219309",
         intel: "96203852de83eeebba3e6d42d25f8899f8fe926db65f010d8fda90a922b2888d"

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
