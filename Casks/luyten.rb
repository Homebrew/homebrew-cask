cask 'luyten' do
  version '0.5.2'
  sha256 '45327b427747c96e280e2f1b045e462212fbe0c935a8318836af77c79e0f7dd2'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: '81f177352f2a973779f22eecf0b7a10781b286e260e3e25b54ecd4a05e73d039'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
