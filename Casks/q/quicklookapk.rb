cask "quicklookapk" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/hezi/QuickLookAPK/raw/master/QuickLookAPK.qlgenerator.zip"
  name "QuickLookAPK"
  desc "Quick Look plugin for Android packages"
  homepage "https://github.com/hezi/QuickLookAPK"

  deprecate! date: "2023-12-17", because: :discontinued

  qlplugin "QuickLookAPK.qlgenerator"

  # No zap stanza required
end
