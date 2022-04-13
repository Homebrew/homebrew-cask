cask "softraid" do
  version "6.2.1"
  sha256 "97d02e0ba06b734fa964494ea09c8e43db366e3e545fe135fc74971efa5b380a"

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
