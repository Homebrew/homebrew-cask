cask 'mist' do
  version '0.8.4'
  sha256 '50efcacfce0278269e8edd89aa91178c0ba00d9584fc019e25863939d0acf6ac'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '2d7732efec4c6ae0075a4bb955750dc4fd8e78874abe2c5216e527c25aa3d9b9'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'
  license :gpl

  app 'Mist.app'
end
