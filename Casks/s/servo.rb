cask "servo" do
  version "2025-05-22"
  sha256 "275d3d4ec6d3f2151bdeaa3812b32e0c61c5b2768d47ab3aa8ca567fb420e1cd"

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
