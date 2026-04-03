cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-04-02"
  sha256 arm:   "f736f0f9dc5b9e241851cb9d01449b9a4f263714b7f2b1b6954c6201782860d3",
         intel: "9a11983a6d29738df28560b06d1ff641825902d3fc79f135c742e0d42c59ea31"

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
