cask "servo" do
  version "2025-04-13"
  sha256 "fa354292111e3f0111f73e7a0064d076d767746e604cdda053f26a5b997449d8"

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
