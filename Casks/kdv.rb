cask 'kdv' do
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/kdv.tar'
  name 'kdv'
  homepage 'http://newosxbook.com/tools/kdv.html'

  binary 'kdv.universal', target: 'kdv'
end
