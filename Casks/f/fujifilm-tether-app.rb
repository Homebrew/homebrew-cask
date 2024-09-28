cask "fujifilm-tether-app" do
  version "1.30.0,vvr6ik27"
  sha256 "613e43b3688b6a362a661a767c43b22db87fe574ba41f2cecb88e07c56154437"

  url "https://dl.fujifilm-x.com/support/software/tether-app-mac#{version.csv.first.no_dots}-#{version.csv.second}/FUJIFILM_TetherApp_Mac#{version.csv.first.no_dots}.pkg"
  name "FUJIFILM TETHER APP"
  desc "For Fujifilm GFX/X series camera tether shooting"
  homepage "https://fujifilm-x.com/en-us/support/download/software/tether-app/"

  livecheck do
    url :homepage
    regex(%r{Mac\sVersion:\s(\d+(?:\.\d+)+).*href=.*?tether-app-mac\d+-([a-zA-Z0-9]+)/}im)
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
