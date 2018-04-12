cask 'intel-haxm' do
  version '7.1.0'
  sha256 'dbbf88dfad7c81abc2165d8db0bdaa42f8d48f4436dc27c02ed7556041122fdc'

  # github.com/intel/haxm was verified as official when first introduced to the cask
  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/intel/haxm/releases.atom',
          checkpoint: '13601cec1e9129ef60537e7196e91df7880a33dfa7d48d5d28733219190bb3cb'
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

  caveats <<~EOS
    Installing this Cask means you have AGREED to the Intel® Hardware Accelerated Execution Manager End-User License Agreement - macOS at

      https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager-end-user-license-agreement-macosx
  EOS
end
