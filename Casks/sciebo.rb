cask 'sciebo' do
  version 'qt5.6.2-2.4.3.2161'
  sha256 '2fb6120746ae86d0d4eade2c4cd867e45b21d492f1b1e046ba4bf6701dd59139'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  name 'sciebo'
  homepage 'https://sciebo.de/'

  depends_on macos: '>= :lion'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
