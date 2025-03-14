cask "servo" do
  version "2025-03-14"
  sha256 "898b97da099b737545168f7dcc3004a91f02f2d8f9f86995ca97b53a2cb75bd0"

  url "https://github.com/servo/servo-nightly-builds/releases/download/#{version}/servo-latest.dmg",
      verified: "github.com/servo/servo-nightly-builds/"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  depends_on macos: ">= :ventura"

  app "Servo.app"

  caveats do
    requires_rosetta
  end
end
