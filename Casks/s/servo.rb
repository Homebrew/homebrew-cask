cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-06-11"
  sha256 arm:   "5e0392f3bffc428d325678d3917bf34f5fc34a246b682715dfd5ba05cdf83461",
         intel: "ea37e028cc15c02d3e0f32dd919a3d8b73dcb746ef64490a3081c342b0692e77"

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
