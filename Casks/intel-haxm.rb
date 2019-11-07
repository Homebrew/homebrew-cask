cask 'intel-haxm' do
  version '7.5.4'
  sha256 'e5d2e07274e512ad2e6a17bb57476a122d336c741d1baf6b1c0e51929e787515'

  # github.com/intel/haxm was verified as official when first introduced to the cask
  url "https://github.com/intel/haxm/releases/download/v#{version}/haxm-macosx_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/intel/haxm/releases.atom'
  name 'Intel HAXM'
  homepage 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager'

  depends_on macos: '>= :yosemite'

  installer script: {
                      executable: 'silent_install.sh',
                      sudo:       true,
                    }

  uninstall pkgutil: 'com.intel.kext.haxm.*',
            script:  {
                       sudo:         true,
                       must_succeed: true,
                       executable:   'silent_install.sh',
                       args:         ['-u'],
                     }

  caveats do
    license 'https://software.intel.com/en-us/android/articles/intel-hardware-accelerated-execution-manager-end-user-license-agreement-macosx'
  end
end
