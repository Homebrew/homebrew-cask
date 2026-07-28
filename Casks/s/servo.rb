cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-27"
  sha256 arm:   "339eba1338bf3b09201b864cc5a00dee821fcdf7ad08726d91db5655f90529f9",
         intel: "f7b7cfacf6f6d0008946a2ba4c3755468a9842dcecd2b6729a30b63e7e05f849"

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
