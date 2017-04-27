cask 'intel-haxm' do
  version '6.1.2,62:0b'
  sha256 '40ab087ffaec9cb7c92feea4e92962039c582378bd12f5d669640b21abcdf2b1'

  url "https://software.intel.com/sites/default/files/managed/#{version.after_comma.before_colon}/#{version.after_colon}/haxm-macosx_v#{version.before_comma.dots_to_underscores}.zip"
  name 'Intel HAXM'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'

  installer script: {
                      executable: 'silent_install.sh',
                      sudo:       true,
                    }

  uninstall script: {
                      sudo:         true,
                      must_succeed: true,
                      executable:   'silent_install.sh',
                      args:         ['-u'],
                    }
end
