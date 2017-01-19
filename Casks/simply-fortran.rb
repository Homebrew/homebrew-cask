cask 'simply-fortran' do
  version '2.33'
  sha256 'bc35e918a62c605ba6a1a7ebbc8100a28f9250cd09a59346ab6dc78ed7238a5b'

  # download.approximatrix.com/sfortran was verified as official when first introduced to the cask
  url "https://download.approximatrix.com/sfortran/#{version}/SimplyFortran-#{version}.dmg"
  name 'Simply Fortran'
  homepage 'http://simplyfortran.com/'

  app 'Simply Fortran.app'
end
