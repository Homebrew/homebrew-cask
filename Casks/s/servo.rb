cask "servo" do
  version "2025-05-09"
  sha256 "db1eb349fbe0570f774e75ee2e724edbcc4f7883e6b3d617411be0e04fb4e338"

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
