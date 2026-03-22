cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-21"
  sha256 arm:   "23ca8550483f4795d2305c830af2483dd20aba79198b31b99dd9dcb679bf428f",
         intel: "99b9beedc559a932a2f6da65e85ac7598d9ab99fc67ffed4442a1282d8039579"

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
