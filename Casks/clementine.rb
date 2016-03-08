cask 'clementine' do
  version '1.2.2'
  sha256 '7e3dac7fb184058e69afbf9cf68850debbbacdfbbd3023fbcdce7c159a2eed75'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: '460ea33daaedccd5c58ce4cda1ace8c86827ba3533dac9a5d0ca0df5e1e1f875'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'
  license :gpl

  app 'clementine.app'

  zap delete: '~/Library/Preferences/org.clementine-player.Clementine.plist'
end
