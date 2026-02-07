cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-07"
  sha256 arm:   "e89a8ec1fc50791bbfd806de4b884889a5eae005d9a6542889dc7c7a7ff8704b",
         intel: "c331fe5a82753b3177bc3c288f255a4ccba21ab39ef6739fcccb1ac65ec83f0d"

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
