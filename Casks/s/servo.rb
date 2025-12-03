cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-12-03"
  sha256 arm:   "fee71112d537d5166648b692d4d7fea75400231dadf1192bf03640012d13a53c",
         intel: "2de6ace073afa7cc6a23b38a96a15a37ce53bdb84a2f6f0e151c1244d7e6ae6c"

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
