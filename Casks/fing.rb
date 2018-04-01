cask 'fing' do
  version '3.0,2016-09'
  sha256 'a8497ce00d58609d8677c6c7850e479420516d94e9f37d681dbdc970359294c6'

  # 39qiv73eht2y1az3q51pykkf-wpengine.netdna-ssl.com was verified as official when first introduced to the cask
  url "https://39qiv73eht2y1az3q51pykkf-wpengine.netdna-ssl.com/wp-content/uploads/#{version.after_comma.hyphens_to_slashes}/overlook-fing-#{version.before_comma}.dmg_.zip"
  name 'Fing'
  homepage 'https://www.fing.io/'

  pkg "overlook-fing-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.Overlook.Fing'
end
