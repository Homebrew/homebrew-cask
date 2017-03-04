cask 'astrotelescope' do
  version '1.12'
  sha256 'a417461c834b1d9a31fd3656e3ee1da2470cc9069df3a205949ef4cb46355e50'

  url "http://download.cloudmakers.eu/AstroTelescope_#{version}.dmg"
  name 'AstroTelescope'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroTelescope.app'
end
