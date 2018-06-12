cask 'qtpass' do
  version '1.2.2'
  sha256 '1fa21f618a4bd28cef7e97bc2a470f537a366319e9523d13048535d78ec1d65f'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  app 'QtPass.app'
end
