cask 'jtool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  # "version" is based on the release date as noted in WhatsNew.txt
  version '2020.01.01'
  sha256 '3c94ecffebbd7c051b3ad45922063cc5a5c316b89c7dfbc9fb9071534b2f7332'

  url 'http://newosxbook.com/tools/jtool2.tgz'
  name 'jtool2'
  homepage 'http://newosxbook.com/tools/jtool.html'

  binary 'jtool2'
end
