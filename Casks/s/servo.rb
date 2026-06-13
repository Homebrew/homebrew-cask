cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-12"
  sha256 arm:   "c76c9990310663687c7a5c558076624ef8efeca5f3245f26b9afb7f3044d7898",
         intel: "e936789f6aeb75dd033cb11e05efc2278a6b4d12fa5eea35a0313f443fe34c10"

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
