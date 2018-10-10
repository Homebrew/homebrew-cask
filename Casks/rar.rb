cask 'rar' do
  version '5.6.1'
  sha256 'ea7baed80976b68dfe178dec662505251dd2d5efe11d92d3b13b0929d4066af2'

  url "https://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name 'RAR Archiver'
  homepage 'https://www.rarlab.com/'

  binary 'rar/rar'
  binary 'rar/unrar'
  artifact 'rar/default.sfx', target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact 'rar/rarfiles.lst', target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  caveats <<~EOS
    Instructions on using rar and unrar are available in

      #{staged_path}/rar/rar.txt
  EOS
end
