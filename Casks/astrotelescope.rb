cask 'astrotelescope' do
  version '1.13'
  sha256 'd6dac278f7b25d5b5d703c643f8bc3eac300a07cdef721585f9f4b9d7b9cd0b8'

  url "http://download.cloudmakers.eu/AstroTelescope_#{version}.dmg"
  name 'AstroTelescope'
  homepage 'http://www.cloudmakers.eu/'

  app 'AstroTelescope.app'
end
