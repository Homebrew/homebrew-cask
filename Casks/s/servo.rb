cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025-11-09"
  sha256 arm:   "ef0901ae5b4a54ce1d860b4060753b8cbcdd32adbe5454934e4da8bb62a23679",
         intel: "e8b352bb964b39f52e6c07fd5331584ea08bec6070c43b19eafd36a43676a2ea"

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
