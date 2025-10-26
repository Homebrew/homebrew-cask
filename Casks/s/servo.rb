cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-10-26"
  sha256 arm:   "67052765830de8da189004a9ce417c6b1dd8d400065607280e6a062b86ea972c",
         intel: "27fcc2794f82c1e778e50335317556e30b6e0219e9086bbaff434dfae82bd355"

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
