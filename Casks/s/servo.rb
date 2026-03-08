cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-07"
  sha256 arm:   "3ce81ce5c8811b5c3cd98374604f74ce10efc13c3e5f4fa350ebeb04b3b3c4e1",
         intel: "160beb7b65fc4e63b70fa1e378b347da1869316f45d60fdb519d4411da6205ef"

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
