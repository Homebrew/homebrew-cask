cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-19"
  sha256 arm:   "0903f8cf20f42351484a80a96a9e9cb1ad21a4473a6b9c03ac1baa36cc06555c",
         intel: "4ee3cd40d610a4f47a15041bdde724a7fe3d8d484f2d8fbb6d754ecaf5d899a5"

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
