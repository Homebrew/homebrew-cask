cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-23"
  sha256 arm:   "0367e885674038860d561f64879eec150a3992bf0b94c6742f76120a68009f9f",
         intel: "a5b8f54b90baae5fe0bd5f1f2cb3241cb5308dfc27cf89414a3aeae775befc89"

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
