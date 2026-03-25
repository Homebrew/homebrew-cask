cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-24"
  sha256 arm:   "ff4d5856be31b30ffc6e72dac6cc93b7e6c73dba0ab05e175b8f289c3e604c9d",
         intel: "74e488fc94cc9e025a00a29cc654511d994052022b738cffcde1eb7bad22d13d"

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
