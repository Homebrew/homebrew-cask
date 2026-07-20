cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-19"
  sha256 arm:   "66503166078cec0bd73dffac8e4575a778e18f1deee0dbd57c3042bcde20d862",
         intel: "2f237906ef8268ac55656f802c34be7cd5913f9d023335fb5662b986555d8df0"

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
