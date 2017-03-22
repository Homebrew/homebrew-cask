cask 'mosh' do
  version '1.2.6'
  sha256 '5eb7797b0c3a5423da1c62f80f8e6268acd55b1b10a850e58fd7bb8f6bdb520d'

  url "https://mosh.org/mosh-#{version}.pkg"
  name 'Mosh'
  homepage 'https://mosh.org/'

  pkg "mosh-#{version}.pkg"

  uninstall pkgutil: 'edu.mit.mosh.mosh.pkg'
end
