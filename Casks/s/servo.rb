cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-25"
  sha256 arm:   "7c773d12a7339d1f54f44fdf8b895da5e3c593ec3322bfa9d01d915142280400",
         intel: "f4ce99ec5a00693093dac433e62dcec8733c07fb2c5ca3f6f3d0c2f40f3954e5"

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
