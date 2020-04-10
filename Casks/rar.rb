cask 'rar' do
  version '5.9.0'
  sha256 'c896360cb815974d4de9e3d8dd48440a4b582b73674892cc42bc17028efa52d7'

  url "https://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name 'RAR Archiver'
  homepage 'https://www.rarlab.com/'

  conflicts_with formula: 'unrar'

  binary 'rar/rar'
  binary 'rar/unrar'
  artifact 'rar/default.sfx', target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact 'rar/rarfiles.lst', target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"

  caveats <<~EOS
    Instructions on using rar and unrar are available in

      #{staged_path}/rar/rar.txt
  EOS
end
