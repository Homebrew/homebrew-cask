cask "rockbox-utility" do
  version "1.5.1"
  sha256 "b979b6aa7ab2894f32425114213d7f9efa803ee41523df6658739b3029058841"

  url "https://download.rockbox.org/rbutil/macosx/RockboxUtility-v#{version}.dmg"
  name "Rockbox Utility"
  desc "Automated installer tool for Rockbox"
  homepage "https://www.rockbox.org/wiki/RockboxUtility"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/RockboxUtility-v(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "RockboxUtility.app"
end
