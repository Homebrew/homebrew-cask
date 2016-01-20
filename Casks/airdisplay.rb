cask 'airdisplay' do
  version '3.0.1'
  sha256 '2da921517a94872b6909b225d8964081a1bad9d2b93be12592bd264665f4b769'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.delete('.')}.zip"
  appcast 'https://avatron.com/updates/software/airdisplay/appcast.xml',
          checkpoint: '6dd2c05fcf9bbeaa171569d791345e0131af37ec3fca83fe7e80e2135ceee0b8'
  name 'Air Display'
  homepage 'https://avatron.com/apps/air-display/'
  license :commercial

  pkg 'Air Display Installer.pkg'

  uninstall pkgutil: 'com.avatron.pkg.AirDisplay'
end
