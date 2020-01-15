cask 'jtool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/jtool2.tgz'
  name 'jtool2'
  homepage 'http://newosxbook.com/tools/jtool.html'

  binary 'jtool2'
end
