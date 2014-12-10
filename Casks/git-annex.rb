cask :v1 => 'git-annex' do
  version :latest
  sha256 :no_check

  if MacOS.version <= :mountain_lion
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.8.2_Mountain_Lion/git-annex.dmg.bz2'

    # This is a horrible hack to force the file extension.  The
    # backend code should be fixed so that this is not needed.
    preflight do
      system '/bin/mv', '--', staged_path.join('git-annex-latest'), staged_path.join('git-annex-latest.dmg')
    end
    container :nested => 'git-annex-latest.dmg'
  else
    url 'http://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg'
  end

  gpg "#{url}.sig",
      :key_url => 'https://downloads.kitenet.net/git-annex/gpg-pubkey.asc'
  homepage 'http://git-annex.branchable.com/'
  license :unknown

  app 'git-annex.app'
  binary 'git-annex.app/Contents/MacOS/git-annex'
  binary 'git-annex.app/Contents/MacOS/git-annex-shell'
  caveats do
    files_in_usr_local
  end
end
