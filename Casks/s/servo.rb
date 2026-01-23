cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-23"
  sha256 arm:   "54cef392e440351fb18a4b0ea8f22975fb7899e9793797927a2a79842ffa7b66",
         intel: "ad12adfc7a91218eb607887996290f505ed957e248bd4ed83d54e07cad5d3499"

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
