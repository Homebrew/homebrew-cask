cask "redquits" do
  version "2"
  sha256 "9a81e75338d3eb009afd20d0a8e909c7075ef1cd891674470d3c40f30a15bf1f"

  url "https://redquits.s3.amazonaws.com/RedQuits_v#{version}.pkg",
      verified: "redquits.s3.amazonaws.com/"
  name "RedQuits"
  desc "Quit an app when closing the last window"
  homepage "http://carsten-mielke.com/redquits.html"

  pkg "RedQuits_v2.pkg"

  uninstall pkgutil: "com.carsten-mielke.RedQuits"

  zap trash: "~/Library/Preferences/com.carsten-mielke.RedQuits.plist"
end
