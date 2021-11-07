cask "softraid" do
  version "6.2"
  sha256 "44a9f6c203ebb78d8dd203d471f0561da344407aae2cbba4bf1ed921583ca4a9"

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
