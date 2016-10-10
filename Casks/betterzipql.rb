cask 'betterzipql' do
  version :latest
  sha256 :no_check

  url 'https://macitbetter.com/BetterZipQL.zip'
  name 'BetterZipQL'
  homepage 'https://macitbetter.com/BetterZip-Quick-Look-Generator/'

  qlplugin 'BetterZipQL.qlgenerator'
end
