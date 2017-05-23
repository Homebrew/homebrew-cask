cask 'keeweb' do
  version '1.5.1'
  sha256 '732ff8a7b8098beed69c459ca5334ae818b6946a89d0508d827b546663465930'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom',
          checkpoint: 'fa88335e6baefeff0651dbf4c49911a218c2bb280f9c22edc33a9c0176587cd5'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'
end
