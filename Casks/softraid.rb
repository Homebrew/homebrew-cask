cask "softraid" do
  version "6.2"
  sha256 "44a9f6c203ebb78d8dd203d471f0561da344407aae2cbba4bf1ed921583ca4a9"

  url "https://downloads.owc.com/softraid/mac/#{version.major}/SoftRAID%20#{version}.dmg",
      verified: "downloads.owc.com/softraid/"
  name "SoftRAID"
  homepage "https://www.softraid.com/"
  desc "Powerful and intuitive software RAID utility"

  livecheck do
    url "https://download.owcdigital.com/softraid6/mac"
    strategy :header_match
  end

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
