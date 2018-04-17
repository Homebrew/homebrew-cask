cask 'prince' do
  version '11.3'
  sha256 'eb45c067620d7978eee6bc615fe19524039a06ef2ee1a25349e49c72ad2e84da'

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
