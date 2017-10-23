cask 'cmucl' do
  version '21b'
  sha256 'c492d71fed7aed11c34f9a3be5355e12df3f60badbcea99c4a1a42beb7e92c9c'

  # common-lisp.net/project/cmucl was verified as official when first introduced to the cask
  url "https://common-lisp.net/project/cmucl/downloads/release/#{version}/cmucl-#{version}-x86-darwin.tar.bz2"
  appcast 'https://common-lisp.net/project/cmucl/downloads/release/',
          checkpoint: '3fba3d06219fd1dee10e62801d0a957775443059d58d2026c5d637649795a4da'
  name 'Cmucl'
  homepage 'https://www.cons.org/cmucl/'

  binary 'bin/lisp'
  artifact 'lib/cmucl', target: "#{HOMEBREW_PREFIX}/lib/cmucl"
  artifact 'man/man1/cmucl.1', target: "#{HOMEBREW_PREFIX}/share/man/man1/cmucl.1"
  artifact 'man/man1/lisp.1', target: "#{HOMEBREW_PREFIX}/share/man/man1/lisp.1"

  caveats <<~EOS
    Instructions on using cmucl are available in

      #{staged_path}/doc/cmucl
  EOS
end
