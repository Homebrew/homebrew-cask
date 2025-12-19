cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-19"
  sha256 arm:   "040b8d7788f484c47169608b479bcd716320aa419f27d391abd2077eb05c8bc0",
         intel: "d105225c3793f9ae99043320b06688a5b9ded0a53131d83be270bf48e2167311"

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
