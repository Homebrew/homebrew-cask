cask :v1 => 'steermouse' do
  version '4.2.5'
  sha256 '4e6dbe5a5390a91948b288333545101532f4371f8c6e37513efcb1abdc4ae63b'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'
  license :commercial

  pkg 'SteerMouse Installer.app/Contents/Resources/SteerMouse.pkg'

  uninstall :pkgutil => 'jp.plentycom.SteerMouse.pkg.*',
            :kext    => 'com.cyberic.SmoothMouse'
end
