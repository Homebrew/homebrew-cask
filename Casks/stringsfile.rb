cask 'stringsfile' do
  version :latest
  sha256 :no_check

  url 'http://blog.timac.org/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip'
  name 'StringsFile QuickLook plugin'
  homepage 'http://blog.timac.org/?p=933'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'StringsFile.qlgenerator'
end
