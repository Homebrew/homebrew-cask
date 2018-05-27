cask 'jtool' do
  version :latest
  sha256 :no_check

  url 'http://www.newosxbook.com/tools/jtool.tar'
  name 'jtool'
  homepage 'http://newosxbook.com/tools/jtool.html'

  binary 'jtool'
  artifact 'jtool.1', target: "#{HOMEBREW_PREFIX}/share/man/man1/jtool.1"
end
