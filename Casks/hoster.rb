cask 'hoster' do
  version '1.2'
  sha256 'aad3404d5127bd3299e57ecf152c911776bf47bea877be56c4a9cefbc0cbf095'

  url "http://www.redwinder.com/macapp/hoster/tmp/Hoster#{version}08.zip"
  appcast 'http://www.redwinder.com/macapp/hoster/hoster12.xml',
          checkpoint: '2fd3f530371d11a463ebf019a77eb77a2c79c100231f3e05785b1ab454e0a013'
  name 'Hoster'
  homepage 'http://www.redwinder.com/macapp/hoster/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "Hoster#{version}08.mpkg", allow_untrusted: true

  uninstall pkgutil: 'com.redwinder.hoster.hoster.pkg'
end
