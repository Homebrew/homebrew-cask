cask 'beesoft' do
  version '3.15.0'
  sha256 '50123c5ed6b388bd607f8a5d5f8f1115f3969da3df20dc3ec57670c32262169c'

  url "https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT-#{version}/Mac-BEESOFT-#{version}.pkg"
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'

  pkg "Mac-BEESOFT-#{version}.pkg"

  uninstall pkgutil: 'com.beeverycreative.beesoft'
end
