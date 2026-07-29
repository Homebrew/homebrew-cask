cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-28"
  sha256 arm:   "a06dc8c25b2cb65a788f8cdcebfae9c1e4e56ae4e385f8e5538bae1a8caf3d51",
         intel: "b297d8c9ec6fdb4480e20e30202482c8b107f7e031ab39a6c42e41f13268df84"

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
