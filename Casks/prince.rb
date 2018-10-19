cask 'prince' do
  version '12.2.1'
  sha256 '12b9583052c347e3ded19f501ed4935bf6c3cf6a44928ee31c19b8beadfdcc09'

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
