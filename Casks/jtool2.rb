cask 'jtool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  # "version" is based on the release date as noted in WhatsNew.txt
  version '2020.01.01'
  sha256 '88ab8587a8528238b3c27605d9581fc97b43850c9aa62ad83c63b1674ce7e52b'

  url 'http://newosxbook.com/tools/jtool2.tgz'
  name 'jtool2'
  homepage 'http://newosxbook.com/tools/jtool.html'

  binary 'jtool2'
end
