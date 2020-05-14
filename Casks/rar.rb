cask 'rar' do
  version '5.9.0'
  sha256 '2f7ec367a773404301c2e58bd2d8d83d6d248a6cf012ccf6e3b89e58d1103457'

  url "https://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name 'RAR Archiver'
  homepage 'https://www.rarlab.com/'

  conflicts_with formula: 'unrar'

  binary 'rar/rar'
  binary 'rar/unrar'
  artifact 'rar/default.sfx', target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact 'rar/rarfiles.lst', target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"
end
