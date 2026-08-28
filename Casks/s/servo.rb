cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-28"
  sha256 arm:   "bf1683b636e2ebccbc3de682887defa2e4dfafa6016e91a67cde9044d1ae8368",
         intel: "cc2fbf3e84ae45e309013f9572d8f40003cae2713e57297bdce99a2de003e37f"

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
