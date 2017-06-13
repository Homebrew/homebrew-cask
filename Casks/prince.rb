cask 'prince' do
  version '11.1'
  sha256 '5bd703ce9510b29985cfec52036528add2fba0f5c0e158ff2f523116e4231f75'

  url "https://www.princexml.com/download/prince-#{version}-macosx.tar.gz"
  name 'Prince'
  homepage 'https://www.princexml.com/'

  installer script: "prince-#{version}-macosx/install.sh"

  uninstall delete: [
                      '/usr/local/bin/prince',
                      '/usr/local/lib/prince',
                    ]

  caveats do
    files_in_usr_local
  end
end
