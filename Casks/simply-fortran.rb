cask 'simply-fortran' do
  version '2.36'
  sha256 'bc8761375ca4480f18304db4c24b94757ace6284a267ae9a6d43e792610f7b5d'

  # download.approximatrix.com/sfortran was verified as official when first introduced to the cask
  url "https://download.approximatrix.com/sfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end
