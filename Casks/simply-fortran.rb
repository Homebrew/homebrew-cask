cask 'simply-fortran' do
  version '2.35'
  sha256 'c0218f90521c9947003e82e7a54d373a9284ed0d59dfc4bbc42bbdd29dc2ec7d'

  # download.approximatrix.com/sfortran was verified as official when first introduced to the cask
  url "https://download.approximatrix.com/sfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end
