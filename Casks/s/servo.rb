cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-20"
  sha256 arm:   "25d154f34d3cba0800e12dbfefcf01b8db0e773310ae1f1fd553e93b7871ee0e",
         intel: "665a5a1fd5250c0ce2aa83ec9119eb46811f02338b913990b0b78028e2ac49ff"

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
