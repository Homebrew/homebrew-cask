cask :v1 => 'intel-haxm' do
  version '1.1.1'
  sha256 'dd6dabfc34ebf73a19bc34eecfb5d8c4269773e3108ee6ef71ae2a5eacfd37d2'

  url 'https://software.intel.com/sites/default/files/managed/21/5f/haxm-macosx_r05.zip'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'
  license :unknown    # todo: improve this machine-generated value

  if MacOS.release <= :mountain_lion
    container :nested => "haxm-macosx_r05/IntelHAXM_#{version}_for_below_10_9.dmg"
  else
    container :nested => "haxm-macosx_r05/IntelHAXM_#{version}_for_10_9_and_above.dmg"
  end

  pkg "IntelHAXM_#{version}.mpkg"

  uninstall :script => {
                        :executable => '/System/Library/Extensions/intelhaxm.kext/Contents/Resources/uninstall.sh',
                        :input      => ['y']
                       }
end
