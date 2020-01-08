cask 'jtool2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  # Unfortunately the author doesn't uniquely name the tarball, so there's no way
  # to download a specific version and no way to check the hash
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/tools/jtool2.tgz'
  name 'jtool2'
  homepage 'http://newosxbook.com/tools/jtool.html'

  binary 'jtool2'
end
