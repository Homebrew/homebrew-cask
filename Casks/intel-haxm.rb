cask :v1 => 'intel-haxm' do
  version '1.1.4'
  sha256 '41ec5833015b17f147e2c9cc623f0dfc7ea33592f876f049bb11e69d6144ddc7'

  url 'https://software.intel.com/sites/default/files/haxm-macosx_r05.zip'
  name 'Intel HAXM'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'
  license :closed

  installer :script => 'silent_install.sh',
            :sudo => true,
            :must_succeed => true

  uninstall :script => {
                        :sudo => true,
                        :must_succeed => true,
                        :executable => 'silent_install.sh',
                        :args => ['-u']
                       }
end
