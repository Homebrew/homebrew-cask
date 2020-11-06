cask "quicklookapk" do
  version :latest
  sha256 :no_check

  url "https://github.com/hezi/QuickLookAPK/raw/master/QuickLookAPK.qlgenerator.zip"
  name "QuickLookAPK"
  homepage "https://github.com/hezi/QuickLookAPK"

  qlplugin "QuickLookAPK.qlgenerator"
end
