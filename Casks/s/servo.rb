cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-01"
  sha256 arm:   "f995ce74c4b5c435a74d65ef1c08c29d495b351a5b9ba0aefed136486f34048d",
         intel: "52c15c93f60c43759d4fe397d6308c6acb104f0d300cca7df2da15e30c40404f"

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
