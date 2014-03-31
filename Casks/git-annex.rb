class GitAnnex < Cask
  if MacOS.version == :mavericks
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg'
  else
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.8.2_Mountain_Lion/git-annex.dmg.bz2'
    # This is a horrible hack to force the file extension.  The
    # backend code should be fixed so that this is not needed.
    before_install do
      system '/bin/mv', destination_path.join('git-annex-latest'), destination_path.join('git-annex-latest.dmg')
    end
    nested_container 'git-annex-latest.dmg'
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
