cask 'cmucl' do
  version '21b'
  sha256 'c492d71fed7aed11c34f9a3be5355e12df3f60badbcea99c4a1a42beb7e92c9c'

  # common-lisp.net/project/cmucl was verified as official when first introduced to the cask
  url "https://common-lisp.net/project/cmucl/downloads/release/#{version}/cmucl-#{version}-x86-darwin.tar.bz2"
  appcast 'https://common-lisp.net/project/cmucl/downloads/release/',
          checkpoint: '532de0c79a895ca878da189f81b785852cb583ac892d02208abffafaa65ace17'
  name 'Cmucl'
  homepage 'https://www.cons.org/cmucl/'

  binary 'bin/lisp'
  artifact 'lib/cmucl', target: '/usr/local/lib/cmucl'
  artifact 'man/man1/cmucl.1', target: '/usr/local/share/man/man1/cmucl.1'
  artifact 'man/man1/lisp.1', target: '/usr/local/share/man/man1/lisp.1'

  caveats <<-EOS.undent
    Instructions on using cmucl are available in

      #{staged_path}/doc/cmucl
  EOS
end
