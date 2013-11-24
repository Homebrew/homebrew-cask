class GitAnnex < Cask
  if MacOS.version == :mavericks
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg'
  else
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.8.2_Mountain_Lion/git-annex.dmg.bz2'
  end
  homepage 'http://git-annex.branchable.com/'
  version '0.0.1'
  no_checksum
  link 'git-annex.app'
  def caveats; <<-EOS.undent
    You may want to add #{destination_path}/git-annex.app/Contents/MacOS to your PATH
    to get git annex entry points.
    
    export PATH=#{destination_path}/git-annex.app/Contents/MacOS:$PATH
    
    EOS
  end
end
