cask 'rar' do
  version '5.7.1'
  sha256 'e43d953db5ed0382ae99447d5812b063ed52305652c4fcd36482c27f18b2fde5'

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
