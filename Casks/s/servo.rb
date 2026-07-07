cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-06"
  sha256 arm:   "8ce0861aa041f4e076f6c917eeeca76591789556b910c79a2dc4f7b84efd2e24",
         intel: "ba54bc9aa5dd5775a72e7724243fe8a472d97ad6cee3748084ce80bcca53ef0d"

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
