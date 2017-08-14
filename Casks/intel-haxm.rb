cask 'intel-haxm' do
  version '6.2.0,b8:6d'
  sha256 'e83c6209cc08284043ff41e6bf78f302bf760e475d52e0e5f66904ab12412778'

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
end
