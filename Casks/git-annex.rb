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
  caveats do
    path_environment_variable "#{destination_path}/git-annex.app/Contents/MacOS"
  end
end
