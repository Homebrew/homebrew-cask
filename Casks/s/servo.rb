cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-02"
  sha256 arm:   "9f41eac3ea4c27065a5730ba99f32644ed3f441cd5e29aef862e4d6f28a3b86a",
         intel: "aa1ba4fa946d5cd7a5a0b46f549d293fe210cea9c30a08e486a700ea24865d61"

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
