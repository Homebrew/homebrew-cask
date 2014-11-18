class Stringsfile < Cask
  version '1.0'
  sha256 'be705cefd49450f1b1fbc260deae8834312855725ae5195d5d18bb0c92a7033c'

  url 'http://blog.timac.org/post-images/StringsFileQuickLook/StringsFile.qlgenerator.zip'
  homepage 'http://blog.timac.org/?p=933'
  license :unknown

  qlplugin 'StringsFile.qlgenerator'
end
