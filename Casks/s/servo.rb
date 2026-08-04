cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-03"
  sha256 arm:   "bc8316494ecc16596a65aa60f53aa68f3726621f8074dff9c8c7a01305754404",
         intel: "113aacecc15ca89e039ddb89cc3c9dc0ab0adbb4a1c225e4b235fa23d96493e7"

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
