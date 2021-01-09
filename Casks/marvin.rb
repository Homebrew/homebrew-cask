cask "marvin" do
  version "1.58.0"
  sha256 "e4da5683f44440ee362f38c548d4e35e882853e109b1383c27b020598444669d"

  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  name "Amazing Marvin"
  homepage "https://www.amazingmarvin.com/"

  livecheck do
    url "http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
    strategy :header_match
  end

  app "Marvin.app"
end
