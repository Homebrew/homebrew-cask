cask 'joker' do
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/joker.tar'
  name 'Joker iOS kernelcache handling utility'
  homepage 'http://newosxbook.com/tools/joker.html'

  binary 'joker.universal', target: 'joker'
end
