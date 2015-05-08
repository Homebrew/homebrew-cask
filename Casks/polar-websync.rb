cask :v1 => 'polar-websync' do
  version '2.8.2'
  sha256 :no_check

  url "https://www.polarpersonaltrainer.com/downloads/websync_#{version}.dmg"
  name 'Polar WebSync Software'
  homepage 'http://www.polar.com/us-en/support/downloads/Polar_WebSync_Software'
  license :closed
  caveats "Installation of this application requires user input."

  pkg 'Polar WebSync.pkg'

  uninstall :pkgutil => 'fi.polar.websync.pkg',
            :delete => '/Applications/WebSync.app',
            :quit => 'fi.polar.WebSync'
end
