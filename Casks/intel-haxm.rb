cask 'intel-haxm' do
  version '6.0.1'
  sha256 'b990646aed6cf52baebcf1778a45e6c188241d15bc453be0800ca5dab92271a5'

  url "https://software.intel.com/sites/default/files/managed/dd/21/haxm-macosx_v#{version.gsub('.', '_')}.zip"
  name 'Intel HAXM'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'
  license :closed

  installer script:       'silent_install.sh',
            sudo:         true,
            must_succeed: true

  uninstall script: {
                      sudo:         true,
                      must_succeed: true,
                      executable:   'silent_install.sh',
                      args:         ['-u'],
                    }
end
