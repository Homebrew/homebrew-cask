cask "servo" do
  version "2025-03-15"
  sha256 "e8ef78988298e347bae17335f492a2dbe96fbfd303affc5c7d446bbaf8193175"

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
