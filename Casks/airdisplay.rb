cask 'airdisplay' do
  version '3.0.1'
  sha256 '2da921517a94872b6909b225d8964081a1bad9d2b93be12592bd264665f4b769'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.delete('.')}.zip"
  appcast 'https://avatron.com/updates/software/airdisplay/appcast.xml',
          :sha256 => '0cbe95610889c4f22939d50e9b0e1d1117cc3559a7ca0a679e7f7adbc7b262b2'
  name 'Air Display'
  homepage 'https://avatron.com/apps/air-display/'
  license :commercial

  pkg 'Air Display Installer.pkg'

  uninstall :pkgutil => 'com.avatron.pkg.AirDisplay'
end
