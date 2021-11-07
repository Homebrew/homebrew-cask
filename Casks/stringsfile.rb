cask "stringsfile" do
  version "1.0"
  sha256 :no_check

  url "https://blog.timac.org/2014/0325-quicklook-plugin-to-preview-strings-files/StringsFile.qlgenerator.zip"
  name "StringsFile QuickLook plugin"
  homepage "https://blog.timac.org/?p=933"

  livecheck do
    url :url
    strategy :extract_plist
  end

  qlplugin "StringsFile.qlgenerator"
end
