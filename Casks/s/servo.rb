cask "servo" do
  version "2025-04-14"
  sha256 "ab705fbce95c16b3919412e4d69df4689a49f1021d9e7c99b61bd12e3d75b223"

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
