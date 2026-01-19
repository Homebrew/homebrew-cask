cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-01-19"
  sha256 arm:   "c091a9093a4165cb09ae92a0018f670e188c44f5252c4394a3187a33837acb70",
         intel: "839328c2890196947a8fa8bf870c8cca4e7ad53a54a76576cd5b1c0ec8d0c175"

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
