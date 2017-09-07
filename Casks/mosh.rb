cask 'mosh' do
  version '1.3.2'
  sha256 '7b00838e04e954e19d6bd5a63ff9729084bd55e21d894994916b73e996a9c42f'

  url "https://mosh.org/mosh-#{version}.pkg"
  name 'Mosh'
  homepage 'https://mosh.org/'

  pkg "mosh-#{version}.pkg"

  uninstall pkgutil: 'edu.mit.mosh.mosh.pkg'
end
