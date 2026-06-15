cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-14"
  sha256 arm:   "b35390d70595f55ac14229207a1b1246cc9b016e03bf19ee93ac8c3170f58553",
         intel: "3e3371e6815e52f775da07fb7569fa7dd243d8a3e0d92e758edb6bfe14496cc5"

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
