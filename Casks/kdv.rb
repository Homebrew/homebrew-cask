cask 'kdv' do
  version ':latest'
  sha256 :no_check

  url 'http://newosxbook.com/tools/kdv.tar'
  name 'kdv'
  homepage 'http://newosxbook.com/tools/kdv.html'

  binary 'kdv.universal', target: 'kdv'
  artifact 'usr/share/misc/trace.codes', target: "#{HOMEBREW_PREFIX}/share/kdv/misc/trace.codes"
  artifact 'kdebugView.c', target: "#{HOMEBREW_PREFIX}/share/kdv/src/kdebugView.c"
  artifact 'kdebug_private.h', target: "#{HOMEBREW_PREFIX}/share/kdv/src/kdebug_private.h"
  artifact 'Makefile', target: "#{HOMEBREW_PREFIX}/share/kdv/src/Makefile"
end
