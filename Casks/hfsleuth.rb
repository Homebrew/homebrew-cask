cask 'hfsleuth' do
  version :latest
  sha256 :no_check

  url 'http://newosxbook.com/files/hfsleuth.tar'
  name 'HFSleuth − HFS+/HFSX file system inspection tool'
  homepage 'http://newosxbook.com/tools/hfsleuth.html'

  binary 'hfsleuth.universal', target: 'hfsleuth'
  artifact 'hfsleuth.1', target: "#{HOMEBREW_PREFIX}/share/man/man1/hfsleuth.1"
end
