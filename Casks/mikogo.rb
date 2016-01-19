cask 'mikogo' do
  version :latest
  sha256 :no_check

  # mikogo4.com is the official download host per the vendor homepage
  url 'https://download.mikogo4.com/mikogo.dmg'
  name 'Mikogo'
  homepage 'https://www.mikogo.com/'
  license :gratis

  # Renamed for clarity: app name is inconsistent with its branding
  app 'Mikogo-host.app', target: 'Mikogo.app'
end
