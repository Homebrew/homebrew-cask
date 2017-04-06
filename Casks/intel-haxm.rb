cask 'intel-haxm' do
  version '6.1.1,19:94'
  sha256 'd4a409cfbeefdeabb2f1bba93f7b009836aa960401c2d8cd3b96bf7012593a2b'

  url "https://software.intel.com/sites/default/files/managed/#{version.after_comma.before_colon}/#{version.after_colon}/haxm-macosx_v#{version.before_comma.dots_to_underscores}.zip"
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
