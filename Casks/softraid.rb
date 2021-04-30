cask "softraid" do
  version "5.8.4"
  sha256 "5d5384403cd2e6b32e62cfe70bddbb82ce1ef4db88b0b197f5e08764e9a586c5"

  url "https://download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID%20#{version}.dmg",
      verified: "download.owcdigital.com/softraid/"
  name "SoftRAID"
  homepage "https://www.softraid.com/"

  livecheck do
    url "https://download.owcdigital.com/softraid5/mac"
    strategy :header_match
  end

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
