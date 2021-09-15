cask "quicklookapk" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/hezi/QuickLookAPK/raw/master/QuickLookAPK.qlgenerator.zip"
  name "QuickLookAPK"
  homepage "https://github.com/hezi/QuickLookAPK"

  livecheck do
    url :url
    strategy :extract_plist
  end

  qlplugin "QuickLookAPK.qlgenerator"
end
