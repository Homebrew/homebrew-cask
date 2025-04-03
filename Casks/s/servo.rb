cask "servo" do
  version "2025-04-03"
  sha256 "a8e34392d1df383e9e8c049d84f6bc59d955496cce5708399e6836e31bcd387f"

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
