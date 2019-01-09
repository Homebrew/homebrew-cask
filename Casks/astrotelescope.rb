cask 'astrotelescope' do
  version '3.5'
  sha256 'd388df0d9a13be3f31c99d93d95e6140b6aa62764fb668d197dff94f4a060b2c'

  url "http://download.cloudmakers.eu/AstroTelescope_#{version}.dmg"
  name 'AstroTelescope'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroTelescope.app'
end
