cask 'beesoft' do
  version '3.12.1'
  sha256 '8b50dc85833870dc93dd7f59581557e6a58082e10c60f676b437a7287b8189f5'

  url "https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT-#{version}/Mac-BEESOFT-#{version}.pkg"
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'

  pkg "Mac-BEESOFT-#{version}.pkg"

  uninstall pkgutil: 'com.beeerycreative.beesoft'
end
