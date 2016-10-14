cask 'intel-haxm' do
  version '6.0.3'
  sha256 'a5d98ee00c52a7cacb346c984f7d353f8268fb6892e60d78af5382d20ac1d15c'

  url "https://software.intel.com/sites/default/files/managed/38/16/haxm-macosx_v#{version.dots_to_underscores}.zip"
  name 'Intel HAXM'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'

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
