cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-07-11"
  sha256 arm:   "2ce494c00e54dc5b87f37e4ae807e8a2161a4f3af20343eabc8946c0fdb7b232",
         intel: "5721ee23f92141ec0449f1de8db5ee3b7d6772314aaa1c168e59f366d5205227"

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
