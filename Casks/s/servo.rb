cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-21"
  sha256 arm:   "1cd5f256e2bd2f1ff3a5abf889e5e5eb5904656c9adefddc03cb91e8edefdf92",
         intel: "d953ade1d92623574938db39e88adea2dba70b9665dfc31f0b1400b242129d3e"

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
