cask :v1 => 'airdisplay' do
  version '3.0.1'
  sha256 '2da921517a94872b6909b225d8964081a1bad9d2b93be12592bd264665f4b769'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.delete('.')}.zip"
  name 'Air Display'
  appcast 'https://www.avatron.com/updates/software/airdisplay/appcast.xml',
          :sha256 => '5318742e7d9f7f4da9498e3100d8b5f92abc18a574988f1d5fa5a551ad0af062'
  homepage 'https://avatron.com/apps/air-display/'
  license :commercial

  pkg 'Air Display Installer.pkg'

  uninstall :pkgutil => 'com.avatron.pkg.AirDisplay'
end
