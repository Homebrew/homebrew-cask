cask "servo" do
  version "2025-04-12"
  sha256 "eb5ad21b188181636b3133ebe4c10ab4ad0790649fb0519811a2fafcb3f33abe"

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
