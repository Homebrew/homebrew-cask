cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-29"
  sha256 arm:   "fa36f576a04fdc73ce0dbd262b4ef467a673e27713fbd5e9d0fd58258b489dd7",
         intel: "a92357b4e7ba98813a7d3f5eb13054a350ead3d7d06b40a3ee6f60b3143e360c"

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
