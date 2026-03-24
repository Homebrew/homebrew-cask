cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-23"
  sha256 arm:   "bd71a35ddf4e3bc63a3bee68b4c7196696d4143b5ee139c87120074a0d3a1e45",
         intel: "4cbdab163f1b49457cdb551c6ef18a9042c9bb40ea202516f3a4feed1dad0325"

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
