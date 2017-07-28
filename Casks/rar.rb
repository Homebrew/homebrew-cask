cask 'rar' do
  version '5.5.b6'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name 'RAR Archiver'
  homepage 'http://www.rarlab.com/'

  binary 'rar/rar'
  binary 'rar/unrar'
  artifact 'rar/default.sfx', target: '/usr/local/lib/default.sfx'
  artifact 'rar/rarfiles.lst', target: '/usr/local/etc/rarfiles.lst'

  caveats <<-EOS.undent
    Instructions on using rar and unrar are available in

      #{staged_path}/rar/rar.txt
  EOS
end
