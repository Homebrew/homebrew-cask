cask 'sciebo' do
  version '2.5.1.2376'
  sha256 '00e167c61aa32801968c36d3bb4dec3399094a9f48828a91988e4273f64d7e84'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  appcast 'https://www.sciebo.de/updateserver/?version=2.3.3.1812&platform=macos&oem=sciebo&sparkle=true'
  name 'sciebo'
  homepage 'https://sciebo.de/'

  depends_on macos: '>= :lion'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
