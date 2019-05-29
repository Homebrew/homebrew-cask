cask 'intel-haxm' do
  version '7.4.1'
  sha256 '613c2ee9725af7febdb1b0adef0f8f487aa610f0fa4b75d89dad267145cd2293'

  # github.com/intel/haxm was verified as official when first introduced to the cask
  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/intel/haxm/releases.atom'
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

  caveats do
    license 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager-end-user-license-agreement-macosx'
  end
end
