cask 'rar' do
  version '5.5.b4'
  sha256 '98a41a4b833a59d5d4ad89d5854343e15cc410b23e8008e9dc82839939899e88'

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
