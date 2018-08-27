cask 'intel-haxm' do
  version '7.3.0'
  sha256 'f73f97679ca9b54369b95120209d3fd5fe12144e275c8e50248249562505349f'

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
