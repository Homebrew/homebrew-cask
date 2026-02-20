cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-20"
  sha256 arm:   "fd6bb3162dcc91ad8aa050b5277588aaa3e60d9e1ca843edb2413968c6119ca1",
         intel: "b9b71ef3f14211ce539260ef4b3d7e1b158b13fc027c4fbf22dba2691a40c8f5"

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
