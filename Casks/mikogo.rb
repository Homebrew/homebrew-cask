cask :v1 => 'mikogo' do
  version :latest
  sha256 :no_check

  url 'http://download.mikogo4.com/mikogo.dmg'
  homepage 'http://www.mikogo.com/'
  license :gratis

  # Renamed for clarity: app name is inconsistent with its branding
  app 'Mikogo-host.app', :target => 'Mikogo.app'
end
