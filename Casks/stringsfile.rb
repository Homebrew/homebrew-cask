cask 'stringsfile' do
  version :latest
  sha256 :no_check

  url 'http://blog.timac.org/wp-content/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip'
  name 'StringsFile QuickLook plugin'
  homepage 'http://blog.timac.org/?p=933'

  qlplugin 'StringsFile.qlgenerator'
end
