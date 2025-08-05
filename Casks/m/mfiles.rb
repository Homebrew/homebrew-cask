cask "mfiles" do
  version "2.5.3,20240328"
  sha256 "ed871abb9876721f6b9e17805147c9afa505851857f1dd88cfeef4a847b59173"

  url "https://mfiles.maokebing.com/package/mfiles-helper-#{version.csv.first}-macos-#{version.csv.second}.dmg"
  name "MFiles"
  name "iTrunSo"
  name "爱传送"
  desc "Transfer files over local network"
  homepage "https://mfiles.maokebing.com/"

  livecheck do
    url :homepage
    regex(/mfiles[._-]helper[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "爱传送.app"

  uninstall quit: "com.windtune.itransfer"

  zap trash: "~/Library/Preferences/com.windtune.itransfer.plist"
end
