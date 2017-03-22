cask 'intel-haxm' do
  version '6.1.0,e1:bf'
  sha256 '80590becaaa89acbf6df23c113ab78ba35e92e1e54e73b93682759abd0653fdc'

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
