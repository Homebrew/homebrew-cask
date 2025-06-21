cask "fujifilm-tether-app" do
  version "1.34.0,ym6rhx10"
  sha256 "e1339b5b4489291742c2805933922c3875236af5520c7fd65365b7a3a05b5b7d"

  url "https://dl.fujifilm-x.com/support/software/tether-app-mac#{version.csv.first.no_dots}-#{version.csv.second}/FUJIFILM_TetherApp_Mac#{version.csv.first.no_dots}.pkg"
  name "FUJIFILM TETHER APP"
  desc "For Fujifilm GFX/X series camera tether shooting"
  homepage "https://fujifilm-x.com/en-us/support/download/software/tether-app/"

  livecheck do
    url :homepage
    regex(%r{Mac\sVersion:\s(\d+(?:\.\d+)+).*href=.*?tether-app-mac\d+-([a-z0-9]+)/}im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  pkg "FUJIFILM_TetherApp_Mac#{version.csv.first.no_dots}.pkg"

  uninstall pkgutil: "com.fujifilm.FUJIFILM_TetherApp_Mac"

  zap trash: [
    "~/Library/Application Support/com.fujifilm.denji/FUJIFILM TetherApp",
    "~/Library/Preferences/com.fujifilm.FUJIFILM-TETHER-APP.plist",
  ]
end
