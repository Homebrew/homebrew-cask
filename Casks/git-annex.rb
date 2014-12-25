cask :v1 => 'git-annex' do
  version :latest
  sha256 :no_check

  if MacOS.release == :lion
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.7.5_Lion/git-annex.dmg'
  elsif MacOS.release == :mountain_lion
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.8.2_Mountain_Lion/git-annex.dmg.bz2'

    # This is a horrible hack to force the file extension.  The
    # backend code should be fixed so that this is not needed.
    preflight do
      system '/bin/mv', '--', staged_path.join('git-annex-latest'), staged_path.join('git-annex-latest.dmg')
    end
    container :nested => 'git-annex-latest.dmg'
  elsif MacOS.release == :mavericks
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg'
  elsif MacOS.release == :yosemite
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.10_Yosemite/git-annex.dmg'
  else
    # Unusual case: there is no fall-through.  Each version of the software is
    # specific to an OS X release, so define nothing when the release is unknown.
  end

  gpg "#{url}.sig",
      :key_url => 'https://downloads.kitenet.net/git-annex/gpg-pubkey.asc'
  homepage 'http://git-annex.branchable.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'git-annex.app'
  binary 'git-annex.app/Contents/MacOS/git-annex'
  binary 'git-annex.app/Contents/MacOS/git-annex-shell'

  depends_on :macos => %w{
                          :lion
                          :mountain_lion
                          :mavericks
                          :yosemite
                         }

  caveats do
    files_in_usr_local
  end
end
