cask 'keeweb' do
  version '1.3.1'
  sha256 'e6bfeacebffb2e82bf7e342f8bc42255eda68ab45d80492db29fe0df1a30fbc2'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: '226a02d07cba34c795210db32ab1d9b33530cef49dbbc05c95819171d3ce74c0'
  name 'KeeWeb'
  homepage 'https://keeweb.info'
  license :mit

  auto_updates true

  app 'KeeWeb.app'
end
