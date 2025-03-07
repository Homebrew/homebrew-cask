cask "servo" do
  version "2025-03-07"
  sha256 "ecf81aa8b74d8f26f54003a4e8ab27fed15b53ec2a9ed0f0f534bbf444a1e652"

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
