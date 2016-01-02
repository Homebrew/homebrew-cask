cask 'betterzipql' do
  version :latest
  sha256 :no_check

  url 'http://macitbetter.com/BetterZipQL.zip'
  name 'BetterZipQL'
  homepage 'http://macitbetter.com/BetterZip-Quick-Look-Generator/'
  license :gratis

  qlplugin 'BetterZipQL.qlgenerator'
end
