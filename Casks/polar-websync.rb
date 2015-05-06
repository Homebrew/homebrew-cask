cask :v1 => 'polar-websync' do
  version '2.8.2'
  sha256 :no_check
  url "https://www.polarpersonaltrainer.com/downloads/websync_#{version}.dmg"
  name 'Polar WebSync Software'
  homepage 'http://www.polar.com/us-en/support/downloads/Polar_WebSync_Software'
  license :closed
  pkg 'Polar WebSync.pkg'
  zap :delete => [
        '/Applications/WebSync.app'
    ]
end
