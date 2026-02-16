cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-16"
  sha256 arm:   "edba7c54c9f4a76005951ad636e3f3fa2ce2304e341555bd1d053716ed139932",
         intel: "09d8dfc5a5d27a57c1c5b54f1a20c7e76ca7c770684dd216e6e1d6a0a9918022"

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
