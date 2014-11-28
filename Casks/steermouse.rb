cask :v1 => 'steermouse' do
  version '4.1.9'
  sha256 '4704aa8b01842c2e619db546fa045e515ee7e3a94d9d339f4650f2f8684b1280'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  homepage 'http://plentycom.jp/en/steermouse/'
  license :unknown

  pkg 'SteerMouse Installer.app/Contents/Resources/SteerMouse.pkg'

  uninstall :pkgutil => 'jp.plentycom.SteerMouse.pkg.*',
            :kext    => 'com.cyberic.SmoothMouse'
end
