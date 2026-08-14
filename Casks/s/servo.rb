cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-13"
  sha256 arm:   "a9896c2ab87e5eaf52fd133cd775e37d4fc50c36d11e9938bd59e22dc61228ff",
         intel: "93a734c338483b3cc3378cfcda8f315cc48154bc4f867133a4f9ae229f167d77"

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
