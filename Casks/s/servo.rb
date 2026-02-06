cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-06"
  sha256 arm:   "ffab0666186657ab01682151379931437ee1cf2e4b63cd8f4d6a70f50d67c3dc",
         intel: "9fe523b6103fbf5c776ddd954a4c3be7b63111aaeba4dabf46c156880b312b4e"

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
