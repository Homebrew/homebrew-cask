cask 'kaku' do
  version '1.9.0'
  sha256 '3c5edd62a85a244140e73d728879dec93c0073b104fe59726579ebbb97e82546'

  # github.com/EragonJ/Kaku was verified as official when first introduced to the cask
  url "https://github.com/EragonJ/Kaku/releases/download/#{version}/Kaku-#{version}.dmg"
  appcast 'https://github.com/EragonJ/Kaku/releases.atom',
          checkpoint: '1618f1ba499e2ac9d16b866a68d58f97dc7cc94b8bcfec3a31dd63879634f289'
  name 'Kaku'
  homepage 'http://kaku.rocks/'

  app 'Kaku.app'
end
