cask 'beesoft' do
  version '4.0.5'
  sha256 'f5557e4f13ac056e4fb05688ee111187b0cfe4d29774d95229b629d9ad47cd20'

  url "https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT%20-%20#{version.major_minor}/Desktop%20Version/BEESOFT-#{version}.pkg"
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'

  pkg "Mac-BEESOFT-#{version}.pkg"

  uninstall pkgutil: 'com.beeverycreative.beesoft'
end
