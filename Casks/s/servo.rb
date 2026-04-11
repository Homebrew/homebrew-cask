cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-10"
  sha256 arm:   "2d319e634c94811fe12203c374212e0747ace155369e528bb55c506945ecf44d",
         intel: "a1d239d860c0f3a8f0997e46e066226c81afbd0c006926f668d4073b2f14f956"

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
