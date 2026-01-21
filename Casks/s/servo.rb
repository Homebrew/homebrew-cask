cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-21"
  sha256 arm:   "88bf6d5b165de2059a90b01fd6b6bbb27d68aec4560f89500b06e0cd5a4965df",
         intel: "337ae4e81423bfc162c68a16320f352d20630484768ed69856d4c6010cb5a9dd"

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
