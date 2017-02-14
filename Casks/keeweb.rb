cask 'keeweb' do
  version '1.4.0'
  sha256 '0a05d6ad6583d152fa7547c3f7788eed2da011025af5892cc1d5157e31e5c7c6'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '46f2cd53432b201d16e54138eb0fae8d8fd2216d3add6e54775c76c41e7cce49'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
