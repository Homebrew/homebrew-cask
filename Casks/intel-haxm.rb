cask :v1 => 'intel-haxm' do
  version '1.1.4'
  sha256 '41ec5833015b17f147e2c9cc623f0dfc7ea33592f876f049bb11e69d6144ddc7'

  url 'https://software.intel.com/sites/default/files/haxm-macosx_r05.zip'
  name 'Intel HAXM'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  container = { :type => :dmg, :nested => "haxm-macosx_r05/IntelHAXM_#{version}.dmg" }

  if (MacOS.release >= :mountain_lion && MacOS.release <= :yosemite)
    installer :script => 'silent_install.sh'
  else
    installer :manual => "IntelHAXM_#{version}.dmg"
  end

  uninstall :script => {
    :executable => '/System/Library/Extensions/intelhaxm.kext/Contents/Resources/uninstall.sh',
    :input      => ['y']
  }

end
