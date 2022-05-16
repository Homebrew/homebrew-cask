cask "day-o" do
  if MacOS.version <= :mojave
    version "2.0"
    sha256 "24c64e66499bde5149d43c7b9b33b44b46ac6d136fcc4a988fd7c298aff02071"
  else
    version "3.0.1"
    sha256 "4963f503c1e47bfa0f8bdbbbe5694d6a7242d298fb44ff68af80d42f1eaebaf9"
  end

  url "https://shauninman.com/assets/downloads/Day-#{version.major_minor}.zip"
  name "Day-O"
  homepage "https://shauninman.com/archive/2020/04/08/day_o_mac_menu_bar_clock_for_catalina"

  livecheck do
    # The internal version of the application is different from the download url
    skip "Version information not available"
  end

  app "Day-#{version.major_minor}/Day-O.app"

  zap trash: "~/Library/Preferences/com.shauninman.Day-O.plist"
end
