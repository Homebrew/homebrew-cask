cask 'komodo-ide' do
  version '9.3.2-88191'
  sha256 '192b3391e677b84223b25a910b3e2469370ce76c55056a77899bd75c63bd720b'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'
  license :commercial

  app 'Komodo IDE 9.app'
end
