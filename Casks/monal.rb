cask 'monal' do
  version '2.1b6'
  sha256 'bf05fd97f35855a3d20d5cde2364228800b72239bcf9f54c069935db742c9491'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          checkpoint: '347da5a589d4ca6886fe66dd93cb004294160b5402311d1e831acfb13d5431b0'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
