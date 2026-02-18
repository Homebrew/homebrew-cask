cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-18"
  sha256 arm:   "0c6d62cd88a0b8ba373fb5a3887f347fc1bdcd05c1ca888e0e01fa0bcd973c4d",
         intel: "2acf3f1b8b2da6c189be016cf6186e9482befff400f4baa56e62e2fcdaed096f"

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
