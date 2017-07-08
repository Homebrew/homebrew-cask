cask 'rar' do
  version '5.5.b5'
  sha256 'a0ae92f5cf0c16cccbc2067292396135e16477594ce026eae9120ad82769470e'

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
