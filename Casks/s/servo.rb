cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-08-21"
  sha256 arm:   "88b0c0fb7d63f439104f8b5ebc73791f377b1c539be2588b4beedc2ac1b5a040",
         intel: "e8cd426f4b07937d11b4c54f51d56e712f49f6146bde6a809f82d442dad64684"

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
