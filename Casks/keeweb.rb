cask 'keeweb' do
  version '1.11.6'
  sha256 'f664113576e51fbe20f02a2dd5a47c21e9137449fb1c8946930ab5082e16058a'

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
