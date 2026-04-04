cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-03"
  sha256 arm:   "b9ed48bea6dc853aa6a6ce28919b9789bdc106e61f78ea7ba573161d28edd85f",
         intel: "bde5a2f9508d0f3415c05328d9c5c378acd3bc46fca4035f958f97208a6e2242"

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
