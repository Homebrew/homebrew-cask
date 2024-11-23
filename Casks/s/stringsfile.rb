cask "stringsfile" do
  version "1.0"
  sha256 :no_check

  url "https://blog.timac.org/2014/0325-quicklook-plugin-to-preview-strings-files/StringsFile.qlgenerator.zip"
  name "StringsFile QuickLook plugin"
  desc "Quick Look plugin to preview .strings files"
  homepage "https://blog.timac.org/?p=933"

  deprecate! date: "2024-11-15", because: :unmaintained

  qlplugin "StringsFile.qlgenerator"

  # No zap stanza required
end
