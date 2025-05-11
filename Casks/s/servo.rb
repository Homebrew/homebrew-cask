cask "servo" do
  version "2025-05-11"
  sha256 "146750c8086a8fe1de28dbcdc83b0fbff47ce7c7a40253b2ce883159fffefeff"

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
