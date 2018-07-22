cask 'sciebo' do
  version '2.4.1.2038'
  sha256 '7de4af04d0187ad2ed849e06d608e16576c85a10be31f9ce08c24865a9688ccc'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  name 'sciebo'
  homepage 'https://sciebo.de/'

  depends_on macos: '>= :lion'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
