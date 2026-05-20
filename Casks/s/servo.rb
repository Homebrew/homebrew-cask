cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-05-19"
  sha256 arm:   "a9c67b11f984c642e9d4e449229d5293127822a391948478585e7a10f2f01033",
         intel: "f74e834733be1ad0702542f4f25ec484eea94758247eeed19709ebb5874f744b"

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
