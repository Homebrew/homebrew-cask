cask 'simplistic' do
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/simplist.tar'
  name 'SimPLISTic - an alternate, cross-platform format for representing property lists'
  homepage 'http://newosxbook.com/tools/simplistic.html'

  binary 'jlutil.universal', target: 'jlutil'

  caveats "The executable is for this cask is #{HOMEBREW_PREFIX}/bin/jlutil, even though the author named the project 'Simplistic'."
end
