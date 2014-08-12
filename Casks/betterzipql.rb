class Betterzipql < Cask
  version 'latest'
  sha256 :no_check

  url 'http://macitbetter.com/BetterZipQL.zip'
  homepage 'http://macitbetter.com/BetterZip-Quick-Look-Generator/'

  qlplugin 'BetterZipQL.qlgenerator'
end
