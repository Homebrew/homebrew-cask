cask 'suidguardng' do
  version '1.0.6'
  sha256 '47fcfbf2278cf23da46cb56f07b98647dc21b24d4e574a56713da371b688f7cd'

  url "https://www.suidguard.com/downloads/SUIDGuardNG-#{version.no_dots}.pkg"
  name 'SUIDGuardNG'
  homepage 'https://www.suidguard.com/'

  depends_on macos: '<= :yosemite'

  pkg "SUIDGuardNG-#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.sektioneins.driver.SUIDGuardNG'
end
