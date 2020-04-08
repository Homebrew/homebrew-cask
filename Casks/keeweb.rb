cask 'keeweb' do
  version '1.13.1'
  sha256 'de6f531a72e6e5589d586e8ac9614f8810e6525b554c5771295e04fe2c01bb70'

  # github.com/keeweb/keeweb was verified as official when first introduced to the cask
  url "https://github.com/keeweb/keeweb/releases/download/v#{version}/KeeWeb-#{version}.mac.dmg"
  appcast 'https://github.com/keeweb/keeweb/releases.atom'
  name 'KeeWeb'
  homepage 'https://keeweb.info/'

  auto_updates true

  app 'KeeWeb.app'

  uninstall_preflight do
    set_ownership "#{appdir}/KeeWeb.app"
  end
end
