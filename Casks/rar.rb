cask 'rar' do
  version '5.6.0'
  sha256 '381eb0c0645bfbd603e7e20a6a8cb34e484c6eeca161a1b3017cf93415448fde'

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
