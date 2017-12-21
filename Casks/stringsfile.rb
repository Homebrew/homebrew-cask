cask 'stringsfile' do
  version :latest
  sha256 :no_check

  url 'https://blog.timac.org/2014/0325-quicklook-plugin-to-preview-strings-files/StringsFile.qlgenerator.zip'
  name 'StringsFile QuickLook plugin'
  homepage 'http://blog.timac.org/?p=933'

  qlplugin 'StringsFile.qlgenerator'
end
