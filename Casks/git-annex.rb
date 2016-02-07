cask 'git-annex' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :lion
    # kitenet.net is the official download host per the vendor homepage
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.7.5_Lion/git-annex.dmg'
  elsif MacOS.release == :mountain_lion
    # kitenet.net is the official download host per the vendor homepage
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.8.2_Mountain_Lion/git-annex.dmg.bz2'

    # This is a horrible hack to force the file extension.  The
    # backend code should be fixed so that this is not needed.
    preflight do
      system '/bin/mv', '--', staged_path.join('git-annex-latest'), staged_path.join('git-annex-latest.dmg')
    end
    container nested: 'git-annex-latest.dmg'
  elsif MacOS.release == :mavericks
    # kitenet.net is the official download host per the vendor homepage
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.9_Mavericks/git-annex.dmg'
  else
    # kitenet.net is the official download host per the vendor homepage
    url 'https://downloads.kitenet.net/git-annex/OSX/current/10.10_Yosemite/git-annex.dmg'
  end

  name 'git-annex'
  homepage 'https://git-annex.branchable.com/'
  license :gpl
  gpg "#{url}.sig",
      key_url: 'https://downloads.kitenet.net/git-annex/gpg-pubkey.asc'

  depends_on macos: %w[
                      :lion
                      :mountain_lion
                      :mavericks
                      :yosemite
                      :el_capitan
                    ]

  app 'git-annex.app'
  binary 'git-annex.app/Contents/MacOS/git-annex'
  binary 'git-annex.app/Contents/MacOS/git-annex-shell'

  uninstall launchctl: 'com.branchable.git-annex.assistant'

  caveats do
    files_in_usr_local
  end
end
