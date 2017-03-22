cask 'prince' do
  version '11'
  sha256 'dac005d49c594b90b0933ffac0601997cee8c64c3e6190073dc1d024eb439553'

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
