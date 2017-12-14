cask 'betterzipql' do
  version '4.0.2'
  sha256 '843f6a1c651ea07092a5828b55559f2eb11016f3793ad010b8d92b89ddd7187f'

  url 'https://macitbetter.com/dl/BetterZip-4.0.2.zip'
  name 'BetterZipQL'
  homepage 'https://macitbetter.com/BetterZip-Quick-Look-Generator/'

  qlplugin 'BetterZipQL.qlgenerator'
end
