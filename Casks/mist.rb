cask 'mist' do
  version '0.10.0'
  sha256 '7850ca771eb68b9ad6c3413ce21d4bf04beeb481bbb859cda482185ec8855471'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '9aa35764ea69c338439e7b7eec3737f4d03eae7551fa1493f2e36a49413ea581'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
