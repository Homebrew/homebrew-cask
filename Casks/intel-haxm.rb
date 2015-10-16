cask :v1 => 'intel-haxm' do
  version '1.1.5'
  sha256 '04ffd2fe1d72a7d0375f332305e535215eefbbf9405975bb93476ad1590e1a3d'

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
