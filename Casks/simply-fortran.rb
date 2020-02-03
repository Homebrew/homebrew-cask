cask 'simply-fortran' do
  version '3.8.3163'
  sha256 '2b65975136881df56cc275fae30b810b7ca4e4c2cd11668ee41375eb52a24b69'

  # download.approximatrix.com/simplyfortran was verified as official when first introduced to the cask
  url "https://download.approximatrix.com/simplyfortran/#{version.major_minor}/simplyfortran-#{version}.dmg"
  appcast 'https://simplyfortran.com/download/?platform=macos',
          configuration: version.major_minor
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end
