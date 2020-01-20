cask 'intel-psxe-ce-c-plus-plus' do
  version '2020.0.015'
  sha256 '16b6cab00557e297f3e9b0ec647c1346ca707ccbd36bd16ca007ae1147d1ea46'

  url "https://registrationcenter-download.intel.com/akdlm/irc_nas/tec/16237/m_ccompxe_#{version}.dmg"
  name 'Intel Parallel Studio XE Composer Edition for C++'
  homepage 'https://software.intel.com/en-us/parallel-studio-xe'

  installer manual: "m_ccompxe_#{version}.app"

  uninstall script: {
                      executable: "m_ccompxe_#{version}.app/Contents/MacOS/uninstall.sh",
                      args:       ['--silent'],
                      sudo:       true,
                    }

  caveats do
    license 'https://software.intel.com/en-us/articles/end-user-license-agreement'
    free_license 'https://software.intel.com/en-us/articles/qualify-for-free-software'
  end
end
