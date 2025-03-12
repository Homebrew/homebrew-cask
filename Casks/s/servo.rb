cask "servo" do
  version "2025-03-12"
  sha256 "4051421d54e7f7ac2105041c958712b32b4b0d5c9d4c96c39ed951795b23cd4d"

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
