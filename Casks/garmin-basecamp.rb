cask 'garmin-basecamp' do
  version '4.6.2'
  sha256 '3437eb07bcf4d6ab626893b173774f842efdf9c27d48e6a345acc5d9e80a185f'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.delete('.')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  depends_on macos: '>= :yosemite'
  depends_on arch: :intel

  pkg 'Install BaseCamp.pkg'

  uninstall pkgutil: 'com.garmin.BaseCamp'
end
