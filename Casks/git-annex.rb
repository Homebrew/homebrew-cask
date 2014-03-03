class GitAnnex < Cask
  if MacOS.version == :mavericks
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg'
  else
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.8.2_Mountain_Lion/git-annex.dmg.bz2'
  end
  homepage 'http://git-annex.branchable.com/'
  version 'latest'
  no_checksum
  link 'git-annex.app'
  binary 'git-annex.app/Contents/MacOS/git-annex'
  caveats do
    files_in_usr_local
  end
end
