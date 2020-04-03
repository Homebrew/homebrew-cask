cask 'electerm' do
  version '1.3.12'
  sha256 'd265cae469deb9830c902f2b4d11195d2faf24c5f29af3b7426608f333548901'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
