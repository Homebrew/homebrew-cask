cask "softraid" do
  version "6.3"
  sha256 "353872dc593d6f5dc6ffe1225c35269a670ea528f6740d52142f934e7f29510e"

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
