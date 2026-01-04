cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-04"
  sha256 arm:   "0abe47e8806ee81777caf2204c54c1a06a0726f6d9b12cd7a1fd0b30f74127be",
         intel: "c8f711d09b048804ca10dd15018a1db124e63facd91e373fe1db811998c2501b"

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
