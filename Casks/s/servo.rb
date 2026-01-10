cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-10"
  sha256 arm:   "acef520365f1b79c42af61690bb9dc6ef8e84bb2b92f1a13b2855a6b7632cc81",
         intel: "8df7404f0c81c8e92fb857d38bdd7332a20a436bacade37702c652adf1598de0"

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
