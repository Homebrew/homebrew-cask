cask 'cmucl' do
  version '21b'
  sha256 'c492d71fed7aed11c34f9a3be5355e12df3f60badbcea99c4a1a42beb7e92c9c'

  # common-lisp.net/project/cmucl was verified as official when first introduced to the cask
  url "https://common-lisp.net/project/cmucl/downloads/release/#{version}/cmucl-#{version}-x86-darwin.tar.bz2"
  name 'Cmucl'
  homepage 'http://www.cons.org/cmucl'

  binary "cmucl-#{version}-x86-darwin/bin/lisp"
  artifact "cmucl-#{version}-x86-darwin/lib/cmucl", target: '/usr/local/lib/cmucl'
  artifact "cmucl-#{version}-x86-darwin/man/man1/cmucl.1", target: '/usr/local/share/man/man1/cmucl.1'
  artifact "cmucl-#{version}-x86-darwin/man/man1/lisp.1", target: '/usr/local/share/man/man1/lisp.1'

  caveats <<-EOS.undent
    Instructions on using cmucl are available in

      #{staged_path}/doc/cmucl
  EOS
end
