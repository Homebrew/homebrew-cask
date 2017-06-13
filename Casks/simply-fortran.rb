cask 'simply-fortran' do
  version '2.37'
  sha256 'fd1a09d7633f36649478162ed72b984c7f3cbe443f8b129f19ca12a4741856bc'

  # download.approximatrix.com/sfortran was verified as official when first introduced to the cask
  url "https://download.approximatrix.com/sfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'https://simplyfortran.com/'

  app 'Simply Fortran.app'
end
