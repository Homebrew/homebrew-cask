cask 'cmucl' do
  version '21c'
  sha256 'ee08a8d9117aecf8b073b6100ce815e7b4ae9ed557a59660a074b3a0af5b452e'

  # common-lisp.net/project/cmucl was verified as official when first introduced to the cask
  url "https://common-lisp.net/project/cmucl/downloads/release/#{version}/cmucl-#{version}-x86-darwin.tar.bz2"
  appcast 'https://common-lisp.net/project/cmucl/downloads/release/',
          checkpoint: 'cbf92cd84281ac26cff1ae36a7a5e3c9f0d6c4386377b230b606e758624d24c8'
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
