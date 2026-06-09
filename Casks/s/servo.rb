cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-08"
  sha256 arm:   "49cbb9027661d8bdfc0f38a706e54860b43171691b46bb9bbb3625ed7d3eba78",
         intel: "1cb1f1226c5b6bc5b9f39f51d01979a29cd1629207fa95a1d77454d054a2bf2a"

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
