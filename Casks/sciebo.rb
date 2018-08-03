cask 'sciebo' do
  version 'qt5.6.2-2.4.2.2144'
  sha256 'b0928d80192b87a069df13db04a4b6ae83d460cbbf2574a926d868098a212eb6'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  name 'sciebo'
  homepage 'https://sciebo.de/'

  depends_on macos: '>= :lion'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
