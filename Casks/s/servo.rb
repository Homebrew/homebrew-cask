cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-23"
  sha256 arm:   "a28f315bfa5a0ce85dd092166ccbe51a374b75949a05d4d6e953b3179d9a05f7",
         intel: "c87aae9ebd80b6d702749766cfe38f016ecbf490f37d39a513f39f7f88708faf"

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
