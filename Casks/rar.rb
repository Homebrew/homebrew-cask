cask 'rar' do
  version '5.8.0'
  sha256 '3a377b5ca58d13fcca2a2c6a8a4ed1caad9b90d50db65bacf49f4565ec92eed0'

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
