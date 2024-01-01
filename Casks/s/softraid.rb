cask "softraid" do
  version "7.6.1"
  sha256 "013fb2a15100fc6a2566b9786443cbfdb58a52826d5ab062a791cd2791f5daf0"

  url "https://downloads.owc.com/softraid/mac/#{version.major}/SoftRAID%20#{version}.dmg",
      verified: "downloads.owc.com/softraid/"
  name "SoftRAID"
  desc "Powerful and intuitive software RAID utility"
  homepage "https://www.softraid.com/"

  livecheck do
    url "https://download.owcdigital.com/softraid#{version.major}/mac"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
