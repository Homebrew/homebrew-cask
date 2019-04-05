cask 'prince' do
  version '12.4'
  sha256 '7f8abe72b88468c36f41754f9fd7f17821cef0c7f8d7e83f861b39b8bf393597'

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
