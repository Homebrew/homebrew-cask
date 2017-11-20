cask 'cura' do
  version '3.0.3'
  sha256 '94e79ad96df8e2ac0019f8336de5b5091456d3d59781289fb916e8736c1da3fe'

  url "https://software.ultimaker.com/current/Cura-#{version}-Darwin.dmg"
  name 'Cura'
  homepage 'https://ultimaker.com/en/products/cura-software'

  conflicts_with cask: 'lulzbot-cura'

  app 'Cura.app'

  uninstall quit: 'nl.ultimaker.cura'

  zap trash: [
               '~/.cura',
               '~/Library/Application Support/cura',
               '~/Library/Preferences/nl.ultimaker.cura.Cura.plist',
               '~/Library/Saved Application State/nl.ultimaker.cura.savedState',
             ]
end
