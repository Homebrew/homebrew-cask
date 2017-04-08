cask 'kaku' do
  version '1.8.5'
  sha256 '7610ba4a10126127b919bb917fb5d1854286a9ae76e22df8660284857cdf781f'

  # github.com/EragonJ/Kaku was verified as official when first introduced to the cask
  url "https://github.com/EragonJ/Kaku/releases/download/#{version}/Kaku-#{version}.dmg"
  appcast 'https://github.com/EragonJ/Kaku/releases.atom',
          checkpoint: '9d430dc3a9e05ecd244fed81aeb766e68d710fb97d59bdaf2070f7b7e12a769c'
  name 'Kaku'
  homepage 'http://kaku.rocks/'

  app 'Kaku.app'
end
