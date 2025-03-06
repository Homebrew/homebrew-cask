cask "servo" do
  version "2025-03-06"
  sha256 "1cc45ca9aaac937a5a4d5fd69667f95617d9d69a64e4972f92be02fb9797c75a"

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
