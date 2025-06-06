cask "servo" do
  version "2025-06-06"
  sha256 "8e773569ee263db3c1d9fa13c024292460d5227f168d7e834f0c8cb087144f1d"

  url "https://github.com/servo/servo-nightly-builds/releases/download/#{version}/servo-latest.dmg",
      verified: "github.com/servo/servo-nightly-builds/"
  name "Servo"
  desc "Parallel browser engine"
  homepage "https://servo.org/"

  depends_on macos: ">= :ventura"

  app "Servo.app"

  zap trash: "~/Library/Application Support/Servo"

  caveats do
    requires_rosetta
  end
end
