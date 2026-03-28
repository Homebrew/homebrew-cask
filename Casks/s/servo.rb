cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-27"
  sha256 arm:   "405ee27316e2cc2ce3dab72482c6942f7ccc290e4215df746bc39bbf480c6c81",
         intel: "235cdd6ef4d206c09bfbdeb6a236365407e104504e89d148a9c1d00dbc6046c6"

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
