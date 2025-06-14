cask "qlfits" do
  version "3.2.2"
  sha256 "95320c8fcdf02681d592122ef75ab8e1b0ee8d6f394760b3c25f8485a3e6c130"

  url "https://github.com/onekiloparsec/QLFits/releases/download/#{version}/QLFits#{version.major}.qlgenerator.zip"
  name "QLFits"
  desc "Quick Look plugin to view FITS files"
  homepage "https://github.com/onekiloparsec/QLFits"

  no_autobump! because: :requires_manual_review

  qlplugin "QLFits#{version.major}.qlgenerator"

  zap trash: "~/Library/Preferences/com.softtenebraslux.qlfitsgenerator.plist"
end
