cask 'hoster' do
  version '1.2,08'
  sha256 'aad3404d5127bd3299e57ecf152c911776bf47bea877be56c4a9cefbc0cbf095'

  url "http://www.redwinder.com/macapp/hoster/tmp/Hoster#{version.before_comma}#{version.after_comma}.zip"
  appcast "http://www.redwinder.com/macapp/hoster/hoster#{version.before_comma.no_dots}.xml",
          checkpoint: '2fd3f530371d11a463ebf019a77eb77a2c79c100231f3e05785b1ab454e0a013'
  name 'Hoster'
  homepage 'http://www.redwinder.com/macapp/hoster/'

  pkg "Hoster#{version.before_comma}#{version.after_comma}.mpkg", allow_untrusted: true

  uninstall pkgutil: 'com.redwinder.hoster.hoster.pkg'
end
