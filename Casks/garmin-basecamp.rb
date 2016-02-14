cask 'garmin-basecamp' do
  version '4.6.1'
  sha256 '05bc827aa383fc9db08d1cda619c10a6444694711b18d9aea976b6427c41d8d9'

  url "http://download.garmin.com/software/BaseCampforMac_#{version.delete('.')}.dmg"
  name 'Garmin BaseCamp'
  homepage 'https://www.garmin.com/en-US/shop/downloads/basecamp'
  license :gratis

  depends_on macos: '>= :yosemite'
  depends_on arch: :intel

  pkg 'Install BaseCamp.pkg'

  uninstall pkgutil: 'com.garmin.BaseCamp'
end
