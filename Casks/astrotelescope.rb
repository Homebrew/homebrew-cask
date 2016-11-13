cask 'astrotelescope' do
  version '1.10'
  sha256 'b294ced6a744c8048c6ce0df4a840f943120c418690b6eacf89a63d0a895c34a'

  url "http://download.cloudmakers.eu/AstroTelescope_#{version}.dmg"
  name 'AstroTelescope'
  homepage 'http://www.cloudmakers.eu'

  app 'AstroTelescope.app'
end
