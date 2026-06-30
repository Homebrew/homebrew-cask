cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-29"
  sha256 arm:   "451bfcf25e324767a74dd79ccd1e00f652a350488897e648db8600045b5afbb8",
         intel: "b5dd36dd2559a56c6c48635a60f7bd3304054d9d51a8668f450ca3b9b6245167"

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
