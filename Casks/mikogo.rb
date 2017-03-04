cask 'mikogo' do
  version :latest
  sha256 :no_check

  # mikogo4.com was verified as official when first introduced to the cask
  url 'https://download.mikogo4.com/mikogo.dmg'
  name 'Mikogo'
  homepage 'https://www.mikogo.com/'

  # Renamed for clarity: app name is inconsistent with its branding
  app 'Mikogo-host.app', target: 'Mikogo.app'
end
