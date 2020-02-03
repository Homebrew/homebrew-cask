cask 'intel-haxm' do
  version '7.5.6'
  sha256 '60d3cf486c005bea6099650ffcf9dfa6dd193914a986bf0b7aa017b94923a880'

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
