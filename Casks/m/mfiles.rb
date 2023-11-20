cask "mfiles" do
  version "2.5.0,20231115"
  sha256 "9fb837c0fe952c35f2bcfe843c3bf6054c807a22604a8222fdd48017745e4dba"

  url "https://mfiles.maokebing.com/package/mfiles-helper-#{version.csv.first}-macos-#{version.csv.second}.dmg"
  name "MFiles"
  name "iTrunSo"
  name "爱传送"
  desc "Transfer files over local network"
  homepage "https://mfiles.maokebing.com/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/mfiles[._-]helper[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-](\d+)\.dmg/)
      "#{match[1]},#{match[2]}"
    end
  end

  app "爱传送.app"

  uninstall quit: "com.windtune.itransfer"

  zap trash: "~/Library/Preferences/com.windtune.itransfer.plist"
end
