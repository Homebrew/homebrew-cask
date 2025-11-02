cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-02"
  sha256 arm:   "3e6db7dd4f4743b3099139e3ee005cd1f3bc9d5f6a2b8a73a31da651139d9229",
         intel: "794f3dc7d774c8d837f5c61c25c986a5f5509b3a179abf19291330af1728fd90"

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
