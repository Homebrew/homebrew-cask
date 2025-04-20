cask "servo" do
  version "2025-04-20"
  sha256 "4c0adac81e0df1cb5c41b3083b38a614a03fe0a718ab0b98b8ade3a0497ac894"

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
