cask 'metaz' do
  version '1.0a15'
  sha256 '7dcc71a917bed0d5686884c4ec198275a1f656ce09db71fa49cc73e46933820c'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom',
          checkpoint: '09398a3fc2ea1e0f87a9cb88df0c63d55553ddd5435a0d55a13ae5b06c9d8bad'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
