cask "servo" do
  version "2025-03-22"
  sha256 "47fa4bb8d680145f46ae4c14041ad14d743a1590891dab4f7dbb05603ba6c0ea"

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
