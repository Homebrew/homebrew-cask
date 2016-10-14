cask 'mosh' do
  version '1.2.5'
  sha256 '8a590ba81edd6f706f2d0afe1cb882bd8ff8860e395b7c6ac7285306f4f12209'

  url "https://mosh.mit.edu/mosh-#{version}.pkg"
  name 'Mosh'
  homepage 'https://mosh.mit.edu/'

  pkg "mosh-#{version}.pkg"

  uninstall pkgutil: 'edu.mit.mosh.mosh.pkg'
end
