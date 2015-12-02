cask :v1 => 'steermouse' do
  version '4.2.6'
  sha256 '4bbe779fcbfc69d9ebb196e888789cb088459cd3f944c3978a55c061d7d9f819'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'
  license :commercial

  pkg 'SteerMouse Installer.app/Contents/Resources/SteerMouse.pkg'

  uninstall :pkgutil => 'jp.plentycom.SteerMouse.pkg.*',
            :kext    => 'com.cyberic.SmoothMouse'
end
