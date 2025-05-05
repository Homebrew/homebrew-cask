cask "servo" do
  version "2025-05-05"
  sha256 "812061cbb54917c3a9b9a7916ecc331cdb07da21df197ae537bd47295eb4c005"

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
