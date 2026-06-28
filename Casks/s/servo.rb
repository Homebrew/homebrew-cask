cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-27"
  sha256 arm:   "16d39394dbe5b223cfcb4624c8156e738aec7cf6df27ccf845ae92c775afaf6a",
         intel: "223141420d0d3c9cab30ff5241fe61a722009368f7d8835d4e19f93839b17466"

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
