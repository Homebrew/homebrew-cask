cask 'suidguardng' do
  version '1.0.6,a'
  sha256 '3437c1ef64c16fd909f0aca89b7ce865cede2a3a38617b398898fc7c218b6276'

  url "https://github.com/sektioneins/SUIDGuard/releases/download/v#{version.before_comma}#{version.after_comma}/SUIDGuardNG-#{version.before_comma}-for-10.11.4.kext.zip"
  appcast 'https://github.com/sektioneins/SUIDGuard/releases.atom'
  name 'SUIDGuardNG'
  homepage 'https://github.com/sektioneins/SUIDGuard'

  depends_on macos: '<= :yosemite'

  pkg "SUIDGuardNG-#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.sektioneins.driver.SUIDGuardNG'
end
