cask "adobe-lens-profile-creator" do
  version "1.0.4"
  sha256 "c7f19bce9e06ed90e683897256c1d5063f4e3aaed3e22d8f97e46769b9361c19"

  url "https://download.adobe.com/pub/adobe/dng/alpc/mac/Adobe_lensprofile_creator_#{version.dots_to_underscores}_mac.dmg"
  name "Adobe Lens Profile Creator"
  homepage "https://supportdownloads.adobe.com/detail.jsp?ftpID=5489"

  app "Adobe Lens Profile Creator #{version}/Adobe Lens Profile Creator.app"
end
