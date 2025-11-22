cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-22"
  sha256 arm:   "d9112c4401c9230b403add46dfc9723ca0e2b9b1235173a0e475d342e76b8b63",
         intel: "557beee0aef22168c90250ed686f7153e45f02557d7a9ed4fb824560fc26d7bd"

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
