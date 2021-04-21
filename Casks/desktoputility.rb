cask "desktoputility" do
  version "4.7"
  sha256 :no_check

  url "https://sweetpproductions.com/products/desktoputility/DesktopUtility.dmg"
  name "DesktopUtility"
  desc "Quick access to useful system tasks"
  homepage "https://sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/desktoputility/updates.htm"
    strategy :page_match
    regex(%r{<h3>\s*(\d+(?:\.\d+)*)\s*</h3>}i)
  end

  app "DesktopUtility.app"
end
