cask :v1 => 'intel-haxm' do
  version '1.0.8'
  sha256 'cee233cf1a0293d9e19b15c375f2c4cb7cf0c6948b7fd579bec28719e0b51d35'

  url 'https://software.intel.com/sites/default/files/managed/68/45/haxm-macosx_r04.zip'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'
  license :unknown

  container :nested => "haxm-macosx_r04/IntelHAXM_#{version}.dmg"
  pkg "IntelHAXM_#{version}.mpkg"
  uninstall :script => {
                        :executable => '/System/Library/Extensions/intelhaxm.kext/Contents/Resources/uninstall.sh',
                        :input      => ['y']
                       }
end
