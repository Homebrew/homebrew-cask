cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-05"
  sha256 arm:   "10a75b972feb7895fe0b806f5d673eae9d976b0e15df566888769fce863ab521",
         intel: "7eae9292ae8e71cfa66bd7919cdbe52a467202ea34c15134a67af65ba900c607"

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
