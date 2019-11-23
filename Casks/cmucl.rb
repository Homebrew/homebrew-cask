cask 'cmucl' do
  version '21c'
  sha256 'ee08a8d9117aecf8b073b6100ce815e7b4ae9ed557a59660a074b3a0af5b452e'

  # common-lisp.net/project/cmucl was verified as official when first introduced to the cask
  url "https://common-lisp.net/project/cmucl/downloads/release/#{version}/cmucl-#{version}-x86-darwin.tar.bz2"
  appcast 'https://common-lisp.net/project/cmucl/downloads/release/'
  name 'Cmucl'
  homepage 'https://www.cons.org/cmucl/'

  binary 'bin/lisp'
  manpage 'man/man1/cmucl.1'
  manpage 'man/man1/lisp.1'
  artifact 'lib/cmucl', target: "#{HOMEBREW_PREFIX}/lib/cmucl"

  caveats <<~EOS
    Instructions on using cmucl are available in

      #{staged_path}/doc/cmucl
  EOS
end
