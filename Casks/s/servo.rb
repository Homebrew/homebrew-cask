cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-24"
  sha256 arm:   "bbb17119b0a3c3452f222db329c584df5dfa9e3b3ac17953b042793245061fc6",
         intel: "8756890cbef31a4c446f99efde0f4bbaaf26e3432dc8efbed04cb452baa013ed"

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
