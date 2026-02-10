cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-10"
  sha256 arm:   "0c4c1fc5958e8ca74a32a73d64f8a7e2b9e337a4bea94af08090ccfd0a149826",
         intel: "f542af832274c2655834a5b3c3917c481eb1cb860c092e39f91d866ca92fcf67"

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
