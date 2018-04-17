cask 'ghdl' do
  version '0.35'
  sha256 '5c7c058998f6db66336544118ba5c7e5fc4abd597be6c6cb4bbedb87d44590d4'

  # github.com/ghdl/ghdl is now official as of 2017-12-20
  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-#{version}-llvm-macosx.tgz"
  appcast 'https://github.com/ghdl/ghdl/releases.atom',
          checkpoint: '1b6063659da48b5b783f6c720b86ac3ca515c87157953e371a43e3050e778031'
  name 'GHDL'
  homepage 'http://ghdl.free.fr/'

end
