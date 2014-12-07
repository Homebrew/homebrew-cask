cask :v1 => 'steermouse' do
  version '4.2.2'
  sha256 '4baa619cefde3145d9a1aec1fadbb20ec59ebb9f69768fdbe7cbe90395cf1baf'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  homepage 'http://plentycom.jp/en/steermouse/'
  license :unknown

  pkg 'SteerMouse Installer.app/Contents/Resources/SteerMouse.pkg'

  uninstall :pkgutil => 'jp.plentycom.SteerMouse.pkg.*',
            :kext    => 'com.cyberic.SmoothMouse'
end
