cask "servo" do
  arch arm: "aarch64", intel: "x86_64"

  version "2026-02-14"
  sha256 arm:   "f0b390c634ca64a110f6a548aaa2964456bbf086c64871cddc896be8d0421950",
         intel: "2a680f1d9fb90de0cda2f4a7d0ca2d93c71e669f54885f8679673ed1eb0a5d38"

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
