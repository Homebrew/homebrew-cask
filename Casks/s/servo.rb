cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-03-15"
  sha256 arm:   "84876603a401b7f2e6b4dc9ec4b87904aadd53e4611e141b59749dc378424808",
         intel: "bd03586bc8e0ba2686b934edf768de6d7d45664a606950dbab7f6c721accdbf9"

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
