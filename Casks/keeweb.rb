cask 'keeweb' do
  version '1.12.2'
  sha256 'c7839d437fecf842c79d762a9f3f6c4a9b6fd459de38c1c6c50144f5f09443b1'

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
