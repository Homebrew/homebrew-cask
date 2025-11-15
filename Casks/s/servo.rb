cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-15"
  sha256 arm:   "a7cec04faafc854b74b6bf3a485cc930a4b1b12cf2920e3635dc9f9acd4f0efe",
         intel: "9201aaf9cbdb371dfcecf982ed11e989883300ab342f7eaa068c7f8b41b02748"

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
