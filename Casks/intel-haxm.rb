cask 'intel-haxm' do
  version '6.2.1,a0:49'
  sha256 '18a5c08a61f711ac1ce824feebfaa5819aabbe7e03ee4638f3edd6f0c34b69d9'

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

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Intel® Hardware Accelerated Execution Manager End-User License Agreement - macOS at

      https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager-end-user-license-agreement-macosx
  EOS
end
