cask 'qutebrowser' do
  version '0.11.0'
  sha256 '89878ea8586f16e092587c66eee5a1033b91a2d4afa463b04bfa24d1b3922d80'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '2f35a22a0b3814b39fc7b2faea531c43768846b18e3219c3f2fa017a04cd711c'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
