cask :v1 => 'steermouse' do
  version '4.2.4'
  sha256 '7cfe807cb473de42b75f018c32d5567f68b949aa78243f36fa0ccc44d7009dcd'

  url "http://plentycom.jp/ctrl/files_sm/SteerMouse#{version}.dmg"
  name 'SteerMouse'
  homepage 'http://plentycom.jp/en/steermouse/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'SteerMouse Installer.app/Contents/Resources/SteerMouse.pkg'

  uninstall :pkgutil => 'jp.plentycom.SteerMouse.pkg.*',
            :kext    => 'com.cyberic.SmoothMouse'
end
