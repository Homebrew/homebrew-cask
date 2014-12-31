cask :v1 => 'betterzipql' do
  version :latest
  sha256 :no_check

  url 'http://macitbetter.com/BetterZipQL.zip'
  homepage 'http://macitbetter.com/BetterZip-Quick-Look-Generator/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'BetterZipQL.qlgenerator'
end
