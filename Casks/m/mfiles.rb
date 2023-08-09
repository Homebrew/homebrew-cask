cask "mfiles" do
  version "2.4.1,20221127"
  sha256 "41db127cfba3278215e6f22380d0f8dccb593f98c613c527d433a39721e9a336"

  url "https://mfiles.maokebing.com/mfiles-helper-#{version.csv.first}-macos-#{version.csv.second}.dmg"
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
