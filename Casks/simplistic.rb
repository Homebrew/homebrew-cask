cask 'simplistic' do
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/simplist.tar'
  name 'SimPLISTic'
  name 'jlutil'
  homepage 'http://newosxbook.com/tools/simplistic.html'

  binary 'jlutil.universal', target: 'jlutil'
end
