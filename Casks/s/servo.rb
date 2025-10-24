cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-24"
  sha256 arm:   "a64472d2b28bebb99ffe3308c5bffaa94aa3dd0e362acfc72c38e7aa2878e8eb",
         intel: "adf1977155c27e9c142d2091286ab678a616a1e4e6aa7b14825f709b8e757248"

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
