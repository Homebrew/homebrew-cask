cask "servo" do
  version "2025-04-26"
  sha256 "f1aa8aa29957ef7453a475e902ff53594886836c65d8fd8c5a75ceb4c885bb48"

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
